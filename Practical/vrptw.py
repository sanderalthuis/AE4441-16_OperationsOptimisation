from gurobipy import *
import os
import xlrd
from data_gen import data_set

# Create problem (#nodes, #vehicles, node map, demand and time window per node)
N = 3 # Number of nodes
NumberofVehicles = 2 # Number of vehicles in fleet
speed = 30 # [km/h]
tws = 4 # scale time windows to either 4 or 8 hours (default=0.5 = 30 mins - 1 hour)
data_set(N = N, M = NumberofVehicles, speed = speed, time_window_scaling=tws) # run this function to create excel sheet

book = xlrd.open_workbook(os.path.join("time_window_test.xlsx"))

Node = []
Demand = {}  # Demand in Thousands
ServiceTime = {}  # Service time in minutes
Distance = {}  # Distance in kms
TravelTime = {}  # Travel time in minutes
VehicleNumber = []  # Vehicle number
Cost = {}
Aij = {}

M = 5000 # Big M method

Capacity = 80
ai = {}
bi = {}
Arc = {}

C_km = 1 #[euro/km]
C_min = 2 #[euro/min]
C_v = 100 #[euro/vehicle] (constant vehicle cost)

#Read customer demand data (product demand amount, servicetime (which we called 'processing time'), and time windows) from excel sheet
sh = book.sheet_by_name("demand")
i = 1
while True:
    try:
        sp = sh.cell_value(i, 0)
        Node.append(sp)
        Demand[sp] = sh.cell_value(i, 1)
        ServiceTime[sp] = sh.cell_value(i, 2)
        ai[sp] = sh.cell_value(i, 4)
        bi[sp] = sh.cell_value(i, 5)
        i = i + 1
    except IndexError:
        break

sh = book.sheet_by_name("VehicleNum")
i = 1
while True:
    try:
        sp = sh.cell_value(i, 0)
        VehicleNumber.append(sp)
        i = i + 1
    except IndexError:
        break

#Read distances from excel sheet
sh = book.sheet_by_name("Distance")
i = 1
for P in Node:
    j = 1
    for Q in Node:
        Distance[P, Q] = sh.cell_value(i, j)
        j += 1
    i += 1

#Read traveltimes from excel sheet (should be just a linear multiplication of distance matrix)
sh = book.sheet_by_name("TravelTime")
i = 1
for P in Node:
    j = 1
    for Q in Node:
        TravelTime[P, Q] = sh.cell_value(i, j)
        j += 1
    i += 1

## Calculate cost per arc travelled (i->j), based on travel time and distance
# sh = book.sheet_by_name("Cost")
i = 1
for P in Node: #loop over rows
    j = 1
    for Q in Node: #loop over columns in this row
        Cost[P, Q] = Distance[P,Q]*C_km + TravelTime[P,Q]*C_min
        j += 1
    i += 1

m = Model("Time window 1")

m.modelSense = GRB.MINIMIZE

xijk = m.addVars(Node, Node, VehicleNumber, vtype=GRB.BINARY, name='X_ijk')  # binary constraint
sik = m.addVars(Node, VehicleNumber, vtype=GRB.CONTINUOUS, name='S_ik')

#Objective function.
m.setObjective(sum((Cost[i, j] * xijk[i, j, k] for i in Node for j in Node for k in VehicleNumber)) + sum(C_v*1 for k in VehicleNumber))

# Customer visited once by any vehicle
for i in Node:
    if i != 'DepotStart' and i != 'DepotEnd':
        m.addConstr(sum(xijk[i, j, k] for j in Node for k in VehicleNumber) == 1)

# Vehicle end station is DepotEnd (vehicle k is not leaving from DepotEnd to any node j, and vehicle k has to come from 1 node j to DepotEnd)
for k in VehicleNumber:
    m.addConstr(sum(xijk['DepotEnd', j, k] for j in Node) == 0)
for k in VehicleNumber:
    m.addConstr(sum(xijk[j, 'DepotEnd', k] for j in Node) == 1)

# Vehicle leaves DepotStart once (vehicle k is going to one node j only from DepotStart)
for k in VehicleNumber:
    m.addConstr(sum(xijk['DepotStart', j, k] for j in Node) == 1)

#Eliminate direct link from start to end
for k in VehicleNumber:
    m.addConstr(xijk['DepotStart', 'DepotEnd', k] == 0)

# Vehicle does not come back to DepotStart
for k in VehicleNumber:
    m.addConstr(sum(xijk[j, 'DepotStart', k] for j in Node) == 0)

# Vehicle leaves to next customer
for j in Node:
    for k in VehicleNumber:
        if j != 'DepotEnd' and j != 'DepotStart':
            m.addConstr(sum(xijk[i, j, k] for i in Node if i != j) - sum(xijk[j, i, k] for i in Node) == 0)

#Printing N and M for completeness of output
print("Node: ",Node)
print("VehicleNumber: ", VehicleNumber)

# Subtour elimination constraint #ADD BACK IN LATER
# for i in Node:
#     for j in Node:
#         for k in VehicleNumber:
#             m.addConstr(sik[i, k] + TravelTime[i, j] - sik[j, k] <= (1 - xijk[i, j, k]) * M)


# Service time of node i + travel time smaller than service time of node j (next node) NEEDS TO BE LINEAR
# for i in Node:
#     for j in Node:
#         for k in VehicleNumber:
#             m.addConstr((xijk[i, j, k]*(sik[i, k] + TravelTime[i, j] - sik[j, k])) <= 0)

# Service time of node i + travel time smaller than service time of node j (next node)
# for i in Node:
#     for j in Node:
#         for k in VehicleNumber:
#             m.addConstr((sik[i, k] + TravelTime[i, j] - M*(1 - xijk[i, j, k])) <= sik[j, k])

# Time window respected
for i in Node:
    for k in VehicleNumber:
         m.addConstr(sik[i, k] >= ai[i]) and m.addConstr(sik[i, k] <= bi[i])

# Capacity - Not limiting
for k in VehicleNumber:
    m.addConstr((sum(Demand[i] * xijk[i, j, k] for i in Node for j in Node)) <= Capacity)

# m.feasRelaxS(1, False, False, True)
m.optimize()

m.write('Timewindow.lp')

#Print solution found
try:
    for var in m.getVars():
        if var.X >= 0.02: #Using 0.02 to avoid including vars close to zero due to rounding errors
            print(var)
except:
    pass
# for v in m.getVars():
#     if v.x > 0.01:
#         print(v.varName, v.x)
# print('Objective:', m.objVal)