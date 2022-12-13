from gurobipy import *
import os
import xlrd

book = xlrd.open_workbook(os.path.join("time window.xlsx"))

Node = []
Demand = {}  # Demand in Thousands
ServiceTime = {}  # Service time in minutes
Distance = {}  # Distance in kms
TravelTime = {}  # Travel time in minutes
VehicleNum = []  # Vehicle number
Cost = {}
Aij = {}

NumberOfVehicles = 2 #number of vehicles in fleet

M = 5000 # Big M method

Cap = 20
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
        ai[sp] = sh.cell_value(i, 3)
        bi[sp] = sh.cell_value(i, 4)
        i = i + 1
    except IndexError:
        break

sh = book.sheet_by_name("VehicleNum")
i = 1
while True:
    try:
        sp = sh.cell_value(i, 0)
        VehicleNum.append(sp)
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

#Read x_ij's from excel sheet - this should be the result
sh = book.sheet_by_name("Aij")
i = 1
for P in Node:
    j = 1
    for Q in Node:
        Aij[P, Q] = sh.cell_value(i, j)
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

xijk = m.addVars(Node, Node, VehicleNum, vtype=GRB.BINARY, name='X_ijk')

Tik = m.addVars(Node, VehicleNum, vtype=GRB.CONTINUOUS, name='T_ik')

#Objective function. TODO Currently it takes Aij as an input. However I think we should calculate this as an output (and possibly write all x_ij to Aij in the excel sheet)
m.setObjective(sum((Cost[i, j] * xijk[i, j, k] for i in Node for j in Node for k in VehicleNum if Aij[i, j] == 1)) + C_v*NumberOfVehicles)

for i in Node:
    if i != 'DepotStart' and i != 'DepotEnd':
        m.addConstr(sum(xijk[i, j, k] for j in Node for k in VehicleNum if Aij[i, j] == 1) == 1)

for k in VehicleNum:
    m.addConstr(sum(xijk['DepotStart', j, k] for j in Node if Aij['DepotStart', j] == 1) == 1)

for j in Node:
    for k in VehicleNum:
        if j != 'DepotStart' and j != 'DepotEnd':
            m.addConstr(sum(xijk[i, j, k] for i in Node if Aij[i, j] == 1) - sum(
                xijk[j, i, k] for i in Node if Aij[j, i] == 1) == 0)

for k in VehicleNum:
    m.addConstr(sum(xijk[i, 'DepotEnd', k] for i in Node if Aij[i, 'DepotEnd'] == 1) == 1)

for i in Node:
    for j in Node:
        for k in VehicleNum:
            if Aij[i, j] == 1:
                m.addConstr(Tik[i, k] + ServiceTime[i] + TravelTime[i, j] - Tik[j, k] <= (
                            1 - xijk[i, j, k]) * M)  # subtour elimination constraint

for i in Node:
    for k in VehicleNum:
        for j in Node:
            if Aij[i, j] == 1:
                m.addConstr(Tik[i, k] >= ai[i]) and m.addConstr(Tik[i, k] <= bi[i])

for k in VehicleNum:
    m.addConstr((sum(Demand[i] * xijk[i, j, k] * Aij[i, j] for i in Node for j in Node)) <= Cap)

m.optimize()

m.write('Timewindow.lp')

for v in m.getVars():
    if v.x > 0.01:
        print(v.varName, v.x)
print('Objective:', m.objVal)