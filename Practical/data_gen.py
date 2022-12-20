import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import random
random.seed(10)

def data_set(N,M,plot=False):
    #coordinates of customers
    x_arr = np.arange(20)
    X,Y = np.meshgrid(x_arr,x_arr)
    coordinates =  np.vstack([X.ravel(), Y.ravel()]).T
    coordinates = coordinates[np.random.choice(range(len(coordinates)), N+1, replace=False)]
    depot,customers = coordinates[0,:],coordinates[1:,:]


    #___________________________________________________________________________________________________________________
    #Demand

    demand_data = {}
    #demand of customers
    demand_data["Demand"] = np.random.randint(1,10,size=(N))

    #service time of customers
    demand_data["SERVICE TIME"] = np.random.randint(6*60,8*60,size=(N))

    #time windows of customers
    demand_data["ai"] = np.random.randint(400,700,size=(N))
    demand_data["bi"] = np.random.randint(2000, 2700, size=(N))

    demand_df = pd.DataFrame(demand_data,index = ["N"+str(i) for i in range(1,N+1,1)])

    depot_start = pd.DataFrame([0,0,0,2700]).transpose()
    depot_start.columns = demand_df.columns.values
    depot_start.index = ["DepotStart"]

    depot_end = pd.DataFrame([0,0,0,5000]).transpose()
    depot_end.columns = demand_df.columns.values
    depot_end.index = ["DepotEnd"]

    demand_df = pd.concat([depot_start,demand_df],axis=0)
    demand_df = pd.concat([demand_df,depot_end],axis=0)
    #___________________________________________________________________________________________________________________
    #VehicleNum

    vehicle_df = pd.DataFrame(["V"+str(i) for i in range(1,M+1,1)],columns = ["Vehicle"])

    #___________________________________________________________________________________________________________________
    #Distance

    #distance matrix
    coordinates = np.vstack((np.vstack((depot,customers)),depot))
    dist_matrix = np.array([np.abs(coordinates[i, 0] - coordinates[:, 0]) + np.abs(coordinates[i, 1] - coordinates[:, 1]) for i in range(len(coordinates))])
    dist_df = pd.DataFrame(dist_matrix,columns = demand_df.index.values,index= demand_df.index.values)

    #___________________________________________________________________________________________________________________
    #TravelTime
    travel_time_df = dist_df*60 + np.random.randint(0,10,size=dist_df.shape)
    np.fill_diagonal(travel_time_df.values, 0)
    travel_time_df.iloc[[0,len(dist_df)-1],[len(dist_df)-1,0]] = 0

    #___________________________________________________________________________________________________________________

    # Create a Pandas Excel writer using XlsxWriter as the engine.
    writer = pd.ExcelWriter('time_window_test.xlsx', engine='xlsxwriter')

    # Write each dataframe to a different worksheet.
    demand_df.to_excel(writer, sheet_name='demand')
    vehicle_df.to_excel(writer, sheet_name='VehicleNum')
    dist_df.to_excel(writer, sheet_name='Distance')
    travel_time_df.to_excel(writer, sheet_name='TravelTime')


    # Close the Pandas Excel writer and output the Excel file.
    writer.save()

N = 10
M = 8

data_set(N = N,M = M)