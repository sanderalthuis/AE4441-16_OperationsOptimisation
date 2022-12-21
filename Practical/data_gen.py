import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import random
from randomtimestamp import randomtimestamp, random_date, random_time
random.seed(10)

def data_set(N,M,speed,plot=False):

    #coordinates of customers
    x_arr = np.arange(40)
    X,Y = np.meshgrid(x_arr,x_arr)
    coordinates =  np.vstack([X.ravel(), Y.ravel()]).T
    coordinates = coordinates[np.random.choice(range(len(coordinates)), N+1, replace=False)]
    depot,customers = coordinates[0,:],coordinates[1:,:]
    index = ["DepotStart"] + ["N"+str(i) for i in range(1,N+1,1)] + ["DepotEnd"]

    #___________________________________________________________________________________________________________________
    #Distance matrix
    #distance between each nodes [km]

    coordinates = np.vstack((np.vstack((depot,customers)),depot))
    dist_matrix = np.array([np.abs(coordinates[i, 0] - coordinates[:, 0]) + np.abs(coordinates[i, 1] - coordinates[:, 1]) for i in range(len(coordinates))])
    dist_df = pd.DataFrame(dist_matrix,columns = index,index= index)

    #___________________________________________________________________________________________________________________
    #TravelTime
    #travel time between each nodes [sec]
    travel_time_df = (dist_df/speed)*60*60
    np.fill_diagonal(travel_time_df.values, 0)
    travel_time_df.iloc[[0,len(dist_df)-1],[len(dist_df)-1,0]] = 0
    travel_time_df.loc[:,"DepotStart"] = 0
    travel_time_df.loc["DepotEnd",:] = 0

    #___________________________________________________________________________________________________________________
    #Demand

    demand_data = {}
    #demand of customers
    demand_data["Demand"] = np.random.randint(1,10,size=(N))

    #service time of customers ( between 6 and 8 minutes)
    demand_data["SERVICE TIME"] = np.random.randint(6*60,8*60,size=(N))

    #time windows of customers
    earliest_delivery = np.random.randint(9,18,size=(N))        #hour of day at which earliest delivery is requested
    delivery_time_window = np.random.randint(1,3,size = (N))    #either half-hour interval or hour: delivery between 14:00-14:30 or 14:00-15:00
    latest_delivery = [earliest_delivery[index]+delivery_time_window[index]*0.5 for index in range(N)]
    latest_delivery_time = [str(s).split(".")[0] + ":00" if str(s).split(".")[1]=="0" else str(s).split(".")[0] + ":30" for s in latest_delivery]
    demand_data["delivery time"] = [str(earliest_delivery[index])+":00 - "+latest_delivery_time[index] for index in range(N)]

    start_work = 8
    demand_data["ai"] = (np.array(earliest_delivery)-start_work)*60*60    #sec
    demand_data["bi"] = (np.array(latest_delivery)-start_work)*60*60
    demand_df = pd.DataFrame(demand_data,index = ["N"+str(i) for i in range(1,N+1,1)])

    depot_start = pd.DataFrame({'Demand':0,'SERVICE TIME':0,'delivery time':np.nan,'ai': 1,'bi':demand_df["ai"].min()},index=["DepotStart"])
    demand_df = pd.concat([depot_start,demand_df])
    depot_end = pd.DataFrame({'Demand':0,'SERVICE TIME':0,'delivery time':np.nan,'ai': 1,'bi':2*demand_df["bi"].max()},index=["DepotEnd"])
    demand_df = pd.concat([demand_df,depot_end])

    #___________________________________________________________________________________________________________________
    #VehicleNum

    vehicle_df = pd.DataFrame(["V"+str(i) for i in range(1,M+1,1)],columns = ["Vehicle"])

    #___________________________________________________________________________________________________________________

    # Create a Pandas Excel writer using XlsxWriter as the engine.
    writer = pd.ExcelWriter('time_window_test.xlsx', engine='xlsxwriter')

    # Write each dataframe to a different worksheet.
    demand_df.to_excel(writer, sheet_name='demand')
    vehicle_df.to_excel(writer, index=False,sheet_name='VehicleNum')
    dist_df.to_excel(writer, sheet_name='Distance')
    travel_time_df.to_excel(writer, sheet_name='TravelTime')

    # Close the Pandas Excel writer and output the Excel file.
    writer.save()

N = 10
M = 8
speed = 30

data_set(N = N,M = M, speed = speed)