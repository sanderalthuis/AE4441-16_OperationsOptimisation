from vrptw import vrptw, printsolution

def fleettoosmall():
    print("Zero or 1 vehicle test")
    out = vrptw(N=5, NumberofVehicles=0)

    if out[1] == 0:
        print("Passed test - no solution found")
    else:
        print("Test error")

def smallscaleplot():
    print("Small scale testing")
    out = vrptw(N=3, NumberofVehicles=2)
    printsolution(out)
    #TODO add plot of small scale map