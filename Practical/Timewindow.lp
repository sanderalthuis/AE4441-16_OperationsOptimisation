\ Model Time window 1
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  0 X_ijk[DepotStart,DepotStart,V1] + 0 X_ijk[DepotStart,DepotStart,V2]
   + 1366.666666666667 X_ijk[DepotStart,N1,V1]
   + 1366.666666666667 X_ijk[DepotStart,N1,V2]
   + 1466.666666666667 X_ijk[DepotStart,N2,V1]
   + 1466.666666666667 X_ijk[DepotStart,N2,V2]
   + 1600 X_ijk[DepotStart,N3,V1] + 1600 X_ijk[DepotStart,N3,V2]
   + 1000 X_ijk[DepotStart,N4,V1] + 1000 X_ijk[DepotStart,N4,V2]
   + 1633.333333333333 X_ijk[DepotStart,N5,V1]
   + 1633.333333333333 X_ijk[DepotStart,N5,V2]
   + 0 X_ijk[DepotStart,DepotEnd,V1] + 0 X_ijk[DepotStart,DepotEnd,V2]
   + 0 X_ijk[N1,DepotStart,V1] + 0 X_ijk[N1,DepotStart,V2]
   + 0 X_ijk[N1,N1,V1] + 0 X_ijk[N1,N1,V2]
   + 1033.333333333333 X_ijk[N1,N2,V1] + 1033.333333333333 X_ijk[N1,N2,V2]
   + 0 X_ijk[N1,N3,V1] + 0 X_ijk[N1,N3,V2] + 1600 X_ijk[N1,N4,V1]
   + 1600 X_ijk[N1,N4,V2] + 0 X_ijk[N1,N5,V1] + 0 X_ijk[N1,N5,V2]
   + 1366.666666666667 X_ijk[N1,DepotEnd,V1]
   + 1366.666666666667 X_ijk[N1,DepotEnd,V2] + 0 X_ijk[N2,DepotStart,V1]
   + 0 X_ijk[N2,DepotStart,V2] + 1033.333333333333 X_ijk[N2,N1,V1]
   + 1033.333333333333 X_ijk[N2,N1,V2] + 0 X_ijk[N2,N2,V1]
   + 0 X_ijk[N2,N2,V2] + 1266.666666666667 X_ijk[N2,N3,V1]
   + 1266.666666666667 X_ijk[N2,N3,V2] + 0 X_ijk[N2,N4,V1]
   + 0 X_ijk[N2,N4,V2] + 0 X_ijk[N2,N5,V1] + 0 X_ijk[N2,N5,V2]
   + 1466.666666666667 X_ijk[N2,DepotEnd,V1]
   + 1466.666666666667 X_ijk[N2,DepotEnd,V2] + 0 X_ijk[N3,DepotStart,V1]
   + 0 X_ijk[N3,DepotStart,V2] + 0 X_ijk[N3,N1,V1] + 0 X_ijk[N3,N1,V2]
   + 1266.666666666667 X_ijk[N3,N2,V1] + 1266.666666666667 X_ijk[N3,N2,V2]
   + 0 X_ijk[N3,N3,V1] + 0 X_ijk[N3,N3,V2] + 0 X_ijk[N3,N4,V1]
   + 0 X_ijk[N3,N4,V2] + 1400 X_ijk[N3,N5,V1] + 1400 X_ijk[N3,N5,V2]
   + 1600 X_ijk[N3,DepotEnd,V1] + 1600 X_ijk[N3,DepotEnd,V2]
   + 0 X_ijk[N4,DepotStart,V1] + 0 X_ijk[N4,DepotStart,V2]
   + 1600 X_ijk[N4,N1,V1] + 1600 X_ijk[N4,N1,V2] + 0 X_ijk[N4,N2,V1]
   + 0 X_ijk[N4,N2,V2] + 0 X_ijk[N4,N3,V1] + 0 X_ijk[N4,N3,V2]
   + 0 X_ijk[N4,N4,V1] + 0 X_ijk[N4,N4,V2] + 1200 X_ijk[N4,N5,V1]
   + 1200 X_ijk[N4,N5,V2] + 1000 X_ijk[N4,DepotEnd,V1]
   + 1000 X_ijk[N4,DepotEnd,V2] + 0 X_ijk[N5,DepotStart,V1]
   + 0 X_ijk[N5,DepotStart,V2] + 0 X_ijk[N5,N1,V1] + 0 X_ijk[N5,N1,V2]
   + 0 X_ijk[N5,N2,V1] + 0 X_ijk[N5,N2,V2] + 1400 X_ijk[N5,N3,V1]
   + 1400 X_ijk[N5,N3,V2] + 1200 X_ijk[N5,N4,V1] + 1200 X_ijk[N5,N4,V2]
   + 0 X_ijk[N5,N5,V1] + 0 X_ijk[N5,N5,V2]
   + 1633.333333333333 X_ijk[N5,DepotEnd,V1]
   + 1633.333333333333 X_ijk[N5,DepotEnd,V2]
   + 0 X_ijk[DepotEnd,DepotStart,V1] + 0 X_ijk[DepotEnd,DepotStart,V2]
   + 0 X_ijk[DepotEnd,N1,V1] + 0 X_ijk[DepotEnd,N1,V2]
   + 0 X_ijk[DepotEnd,N2,V1] + 0 X_ijk[DepotEnd,N2,V2]
   + 0 X_ijk[DepotEnd,N3,V1] + 0 X_ijk[DepotEnd,N3,V2]
   + 0 X_ijk[DepotEnd,N4,V1] + 0 X_ijk[DepotEnd,N4,V2]
   + 0 X_ijk[DepotEnd,N5,V1] + 0 X_ijk[DepotEnd,N5,V2]
   + 0 X_ijk[DepotEnd,DepotEnd,V1] + 0 X_ijk[DepotEnd,DepotEnd,V2]
   + 200 Constant
Subject To
 R0: X_ijk[N1,N2,V1] + X_ijk[N1,N2,V2] + X_ijk[N1,N4,V1] + X_ijk[N1,N4,V2]
   + X_ijk[N1,DepotEnd,V1] + X_ijk[N1,DepotEnd,V2] = 1
 R1: X_ijk[N2,N1,V1] + X_ijk[N2,N1,V2] + X_ijk[N2,N3,V1] + X_ijk[N2,N3,V2]
   + X_ijk[N2,DepotEnd,V1] + X_ijk[N2,DepotEnd,V2] = 1
 R2: X_ijk[N3,N2,V1] + X_ijk[N3,N2,V2] + X_ijk[N3,N5,V1] + X_ijk[N3,N5,V2]
   + X_ijk[N3,DepotEnd,V1] + X_ijk[N3,DepotEnd,V2] = 1
 R3: X_ijk[N4,N1,V1] + X_ijk[N4,N1,V2] + X_ijk[N4,N5,V1] + X_ijk[N4,N5,V2]
   + X_ijk[N4,DepotEnd,V1] + X_ijk[N4,DepotEnd,V2] = 1
 R4: X_ijk[N5,N3,V1] + X_ijk[N5,N3,V2] + X_ijk[N5,N4,V1] + X_ijk[N5,N4,V2]
   + X_ijk[N5,DepotEnd,V1] + X_ijk[N5,DepotEnd,V2] = 1
 R5: X_ijk[DepotStart,N1,V1] + X_ijk[DepotStart,N2,V1]
   + X_ijk[DepotStart,N3,V1] + X_ijk[DepotStart,N4,V1]
   + X_ijk[DepotStart,N5,V1] = 1
 R6: X_ijk[DepotStart,N1,V2] + X_ijk[DepotStart,N2,V2]
   + X_ijk[DepotStart,N3,V2] + X_ijk[DepotStart,N4,V2]
   + X_ijk[DepotStart,N5,V2] = 1
 R7: X_ijk[DepotStart,N1,V1] - X_ijk[N1,N2,V1] - X_ijk[N1,N4,V1]
   - X_ijk[N1,DepotEnd,V1] + X_ijk[N2,N1,V1] + X_ijk[N4,N1,V1] = 0
 R8: X_ijk[DepotStart,N1,V2] - X_ijk[N1,N2,V2] - X_ijk[N1,N4,V2]
   - X_ijk[N1,DepotEnd,V2] + X_ijk[N2,N1,V2] + X_ijk[N4,N1,V2] = 0
 R9: X_ijk[DepotStart,N2,V1] + X_ijk[N1,N2,V1] - X_ijk[N2,N1,V1]
   - X_ijk[N2,N3,V1] - X_ijk[N2,DepotEnd,V1] + X_ijk[N3,N2,V1] = 0
 R10: X_ijk[DepotStart,N2,V2] + X_ijk[N1,N2,V2] - X_ijk[N2,N1,V2]
   - X_ijk[N2,N3,V2] - X_ijk[N2,DepotEnd,V2] + X_ijk[N3,N2,V2] = 0
 R11: X_ijk[DepotStart,N3,V1] + X_ijk[N2,N3,V1] - X_ijk[N3,N2,V1]
   - X_ijk[N3,N5,V1] - X_ijk[N3,DepotEnd,V1] + X_ijk[N5,N3,V1] = 0
 R12: X_ijk[DepotStart,N3,V2] + X_ijk[N2,N3,V2] - X_ijk[N3,N2,V2]
   - X_ijk[N3,N5,V2] - X_ijk[N3,DepotEnd,V2] + X_ijk[N5,N3,V2] = 0
 R13: X_ijk[DepotStart,N4,V1] + X_ijk[N1,N4,V1] - X_ijk[N4,N1,V1]
   - X_ijk[N4,N5,V1] - X_ijk[N4,DepotEnd,V1] + X_ijk[N5,N4,V1] = 0
 R14: X_ijk[DepotStart,N4,V2] + X_ijk[N1,N4,V2] - X_ijk[N4,N1,V2]
   - X_ijk[N4,N5,V2] - X_ijk[N4,DepotEnd,V2] + X_ijk[N5,N4,V2] = 0
 R15: X_ijk[DepotStart,N5,V1] + X_ijk[N3,N5,V1] + X_ijk[N4,N5,V1]
   - X_ijk[N5,N3,V1] - X_ijk[N5,N4,V1] - X_ijk[N5,DepotEnd,V1] = 0
 R16: X_ijk[DepotStart,N5,V2] + X_ijk[N3,N5,V2] + X_ijk[N4,N5,V2]
   - X_ijk[N5,N3,V2] - X_ijk[N5,N4,V2] - X_ijk[N5,DepotEnd,V2] = 0
 R17: X_ijk[N1,DepotEnd,V1] + X_ijk[N2,DepotEnd,V1] + X_ijk[N3,DepotEnd,V1]
   + X_ijk[N4,DepotEnd,V1] + X_ijk[N5,DepotEnd,V1] = 1
 R18: X_ijk[N1,DepotEnd,V2] + X_ijk[N2,DepotEnd,V2] + X_ijk[N3,DepotEnd,V2]
   + X_ijk[N4,DepotEnd,V2] + X_ijk[N5,DepotEnd,V2] = 1
 R19: 5000 X_ijk[DepotStart,N1,V1] + T_ik[DepotStart,V1] - T_ik[N1,V1]
   <= 4487.5
 R20: 5000 X_ijk[DepotStart,N1,V2] + T_ik[DepotStart,V2] - T_ik[N1,V2]
   <= 4487.5
 R21: 5000 X_ijk[DepotStart,N2,V1] + T_ik[DepotStart,V1] - T_ik[N2,V1]
   <= 4450
 R22: 5000 X_ijk[DepotStart,N2,V2] + T_ik[DepotStart,V2] - T_ik[N2,V2]
   <= 4450
 R23: 5000 X_ijk[DepotStart,N3,V1] + T_ik[DepotStart,V1] - T_ik[N3,V1]
   <= 4400
 R24: 5000 X_ijk[DepotStart,N3,V2] + T_ik[DepotStart,V2] - T_ik[N3,V2]
   <= 4400
 R25: 5000 X_ijk[DepotStart,N4,V1] + T_ik[DepotStart,V1] - T_ik[N4,V1]
   <= 4625
 R26: 5000 X_ijk[DepotStart,N4,V2] + T_ik[DepotStart,V2] - T_ik[N4,V2]
   <= 4625
 R27: 5000 X_ijk[DepotStart,N5,V1] + T_ik[DepotStart,V1] - T_ik[N5,V1]
   <= 4387.5
 R28: 5000 X_ijk[DepotStart,N5,V2] + T_ik[DepotStart,V2] - T_ik[N5,V2]
   <= 4387.5
 R29: 5000 X_ijk[N1,N2,V1] + T_ik[N1,V1] - T_ik[N2,V1] <= 4312.5
 R30: 5000 X_ijk[N1,N2,V2] + T_ik[N1,V2] - T_ik[N2,V2] <= 4312.5
 R31: 5000 X_ijk[N1,N4,V1] + T_ik[N1,V1] - T_ik[N4,V1] <= 4100
 R32: 5000 X_ijk[N1,N4,V2] + T_ik[N1,V2] - T_ik[N4,V2] <= 4100
 R33: 5000 X_ijk[N1,DepotEnd,V1] + T_ik[N1,V1] - T_ik[DepotEnd,V1]
   <= 4187.5
 R34: 5000 X_ijk[N1,DepotEnd,V2] + T_ik[N1,V2] - T_ik[DepotEnd,V2]
   <= 4187.5
 R35: 5000 X_ijk[N2,N1,V1] - T_ik[N1,V1] + T_ik[N2,V1] <= 4192.5
 R36: 5000 X_ijk[N2,N1,V2] - T_ik[N1,V2] + T_ik[N2,V2] <= 4192.5
 R37: 5000 X_ijk[N2,N3,V1] + T_ik[N2,V1] - T_ik[N3,V1] <= 4105
 R38: 5000 X_ijk[N2,N3,V2] + T_ik[N2,V2] - T_ik[N3,V2] <= 4105
 R39: 5000 X_ijk[N2,DepotEnd,V1] + T_ik[N2,V1] - T_ik[DepotEnd,V1] <= 4030
 R40: 5000 X_ijk[N2,DepotEnd,V2] + T_ik[N2,V2] - T_ik[DepotEnd,V2] <= 4030
 R41: 5000 X_ijk[N3,N2,V1] - T_ik[N2,V1] + T_ik[N3,V1] <= 4165
 R42: 5000 X_ijk[N3,N2,V2] - T_ik[N2,V2] + T_ik[N3,V2] <= 4165
 R43: 5000 X_ijk[N3,N5,V1] + T_ik[N3,V1] - T_ik[N5,V1] <= 4115
 R44: 5000 X_ijk[N3,N5,V2] + T_ik[N3,V2] - T_ik[N5,V2] <= 4115
 R45: 5000 X_ijk[N3,DepotEnd,V1] + T_ik[N3,V1] - T_ik[DepotEnd,V1] <= 4040
 R46: 5000 X_ijk[N3,DepotEnd,V2] + T_ik[N3,V2] - T_ik[DepotEnd,V2] <= 4040
 R47: 5000 X_ijk[N4,N1,V1] - T_ik[N1,V1] + T_ik[N4,V1] <= 4100
 R48: 5000 X_ijk[N4,N1,V2] - T_ik[N1,V2] + T_ik[N4,V2] <= 4100
 R49: 5000 X_ijk[N4,N5,V1] + T_ik[N4,V1] - T_ik[N5,V1] <= 4250
 R50: 5000 X_ijk[N4,N5,V2] + T_ik[N4,V2] - T_ik[N5,V2] <= 4250
 R51: 5000 X_ijk[N4,DepotEnd,V1] + T_ik[N4,V1] - T_ik[DepotEnd,V1] <= 4325
 R52: 5000 X_ijk[N4,DepotEnd,V2] + T_ik[N4,V2] - T_ik[DepotEnd,V2] <= 4325
 R53: 5000 X_ijk[N5,N3,V1] - T_ik[N3,V1] + T_ik[N5,V1] <= 4115
 R54: 5000 X_ijk[N5,N3,V2] - T_ik[N3,V2] + T_ik[N5,V2] <= 4115
 R55: 5000 X_ijk[N5,N4,V1] - T_ik[N4,V1] + T_ik[N5,V1] <= 4190
 R56: 5000 X_ijk[N5,N4,V2] - T_ik[N4,V2] + T_ik[N5,V2] <= 4190
 R57: 5000 X_ijk[N5,DepotEnd,V1] + T_ik[N5,V1] - T_ik[DepotEnd,V1]
   <= 4027.5
 R58: 5000 X_ijk[N5,DepotEnd,V2] + T_ik[N5,V2] - T_ik[DepotEnd,V2]
   <= 4027.5
 R59: T_ik[DepotStart,V1] >= 1
 R60: T_ik[DepotStart,V1] <= 2650
 R61: T_ik[DepotStart,V1] >= 1
 R62: T_ik[DepotStart,V1] <= 2650
 R63: T_ik[DepotStart,V1] >= 1
 R64: T_ik[DepotStart,V1] <= 2650
 R65: T_ik[DepotStart,V1] >= 1
 R66: T_ik[DepotStart,V1] <= 2650
 R67: T_ik[DepotStart,V1] >= 1
 R68: T_ik[DepotStart,V1] <= 2650
 R69: T_ik[DepotStart,V2] >= 1
 R70: T_ik[DepotStart,V2] <= 2650
 R71: T_ik[DepotStart,V2] >= 1
 R72: T_ik[DepotStart,V2] <= 2650
 R73: T_ik[DepotStart,V2] >= 1
 R74: T_ik[DepotStart,V2] <= 2650
 R75: T_ik[DepotStart,V2] >= 1
 R76: T_ik[DepotStart,V2] <= 2650
 R77: T_ik[DepotStart,V2] >= 1
 R78: T_ik[DepotStart,V2] <= 2650
 R79: T_ik[N1,V1] >= 520
 R80: T_ik[N1,V1] <= 2009
 R81: T_ik[N1,V1] >= 520
 R82: T_ik[N1,V1] <= 2009
 R83: T_ik[N1,V1] >= 520
 R84: T_ik[N1,V1] <= 2009
 R85: T_ik[N1,V2] >= 520
 R86: T_ik[N1,V2] <= 2009
 R87: T_ik[N1,V2] >= 520
 R88: T_ik[N1,V2] <= 2009
 R89: T_ik[N1,V2] >= 520
 R90: T_ik[N1,V2] <= 2009
 R91: T_ik[N2,V1] >= 600
 R92: T_ik[N2,V1] <= 2636
 R93: T_ik[N2,V1] >= 600
 R94: T_ik[N2,V1] <= 2636
 R95: T_ik[N2,V1] >= 600
 R96: T_ik[N2,V1] <= 2636
 R97: T_ik[N2,V2] >= 600
 R98: T_ik[N2,V2] <= 2636
 R99: T_ik[N2,V2] >= 600
 R100: T_ik[N2,V2] <= 2636
 R101: T_ik[N2,V2] >= 600
 R102: T_ik[N2,V2] <= 2636
 R103: T_ik[N3,V1] >= 620
 R104: T_ik[N3,V1] <= 2349
 R105: T_ik[N3,V1] >= 620
 R106: T_ik[N3,V1] <= 2349
 R107: T_ik[N3,V1] >= 620
 R108: T_ik[N3,V1] <= 2349
 R109: T_ik[N3,V2] >= 620
 R110: T_ik[N3,V2] <= 2349
 R111: T_ik[N3,V2] >= 620
 R112: T_ik[N3,V2] <= 2349
 R113: T_ik[N3,V2] >= 620
 R114: T_ik[N3,V2] <= 2349
 R115: T_ik[N4,V1] >= 400
 R116: T_ik[N4,V1] <= 2061
 R117: T_ik[N4,V1] >= 400
 R118: T_ik[N4,V1] <= 2061
 R119: T_ik[N4,V1] >= 400
 R120: T_ik[N4,V1] <= 2061
 R121: T_ik[N4,V2] >= 400
 R122: T_ik[N4,V2] <= 2061
 R123: T_ik[N4,V2] >= 400
 R124: T_ik[N4,V2] <= 2061
 R125: T_ik[N4,V2] >= 400
 R126: T_ik[N4,V2] <= 2061
 R127: T_ik[N5,V1] >= 630
 R128: T_ik[N5,V1] <= 2080
 R129: T_ik[N5,V1] >= 630
 R130: T_ik[N5,V1] <= 2080
 R131: T_ik[N5,V1] >= 630
 R132: T_ik[N5,V1] <= 2080
 R133: T_ik[N5,V2] >= 630
 R134: T_ik[N5,V2] <= 2080
 R135: T_ik[N5,V2] >= 630
 R136: T_ik[N5,V2] <= 2080
 R137: T_ik[N5,V2] >= 630
 R138: T_ik[N5,V2] <= 2080
 R139: 10 X_ijk[N1,N2,V1] + 10 X_ijk[N1,N4,V1] + 10 X_ijk[N1,DepotEnd,V1]
   + 8 X_ijk[N2,N1,V1] + 8 X_ijk[N2,N3,V1] + 8 X_ijk[N2,DepotEnd,V1]
   + 6 X_ijk[N3,N2,V1] + 6 X_ijk[N3,N5,V1] + 6 X_ijk[N3,DepotEnd,V1]
   + 5 X_ijk[N4,N1,V1] + 5 X_ijk[N4,N5,V1] + 5 X_ijk[N4,DepotEnd,V1]
   + 6 X_ijk[N5,N3,V1] + 6 X_ijk[N5,N4,V1] + 6 X_ijk[N5,DepotEnd,V1] <= 20
 R140: 10 X_ijk[N1,N2,V2] + 10 X_ijk[N1,N4,V2] + 10 X_ijk[N1,DepotEnd,V2]
   + 8 X_ijk[N2,N1,V2] + 8 X_ijk[N2,N3,V2] + 8 X_ijk[N2,DepotEnd,V2]
   + 6 X_ijk[N3,N2,V2] + 6 X_ijk[N3,N5,V2] + 6 X_ijk[N3,DepotEnd,V2]
   + 5 X_ijk[N4,N1,V2] + 5 X_ijk[N4,N5,V2] + 5 X_ijk[N4,DepotEnd,V2]
   + 6 X_ijk[N5,N3,V2] + 6 X_ijk[N5,N4,V2] + 6 X_ijk[N5,DepotEnd,V2] <= 20
Bounds
 Constant = 1
Binaries
 X_ijk[DepotStart,DepotStart,V1] X_ijk[DepotStart,DepotStart,V2]
 X_ijk[DepotStart,N1,V1] X_ijk[DepotStart,N1,V2] X_ijk[DepotStart,N2,V1]
 X_ijk[DepotStart,N2,V2] X_ijk[DepotStart,N3,V1] X_ijk[DepotStart,N3,V2]
 X_ijk[DepotStart,N4,V1] X_ijk[DepotStart,N4,V2] X_ijk[DepotStart,N5,V1]
 X_ijk[DepotStart,N5,V2] X_ijk[DepotStart,DepotEnd,V1]
 X_ijk[DepotStart,DepotEnd,V2] X_ijk[N1,DepotStart,V1]
 X_ijk[N1,DepotStart,V2] X_ijk[N1,N1,V1] X_ijk[N1,N1,V2] X_ijk[N1,N2,V1]
 X_ijk[N1,N2,V2] X_ijk[N1,N3,V1] X_ijk[N1,N3,V2] X_ijk[N1,N4,V1]
 X_ijk[N1,N4,V2] X_ijk[N1,N5,V1] X_ijk[N1,N5,V2] X_ijk[N1,DepotEnd,V1]
 X_ijk[N1,DepotEnd,V2] X_ijk[N2,DepotStart,V1] X_ijk[N2,DepotStart,V2]
 X_ijk[N2,N1,V1] X_ijk[N2,N1,V2] X_ijk[N2,N2,V1] X_ijk[N2,N2,V2]
 X_ijk[N2,N3,V1] X_ijk[N2,N3,V2] X_ijk[N2,N4,V1] X_ijk[N2,N4,V2]
 X_ijk[N2,N5,V1] X_ijk[N2,N5,V2] X_ijk[N2,DepotEnd,V1]
 X_ijk[N2,DepotEnd,V2] X_ijk[N3,DepotStart,V1] X_ijk[N3,DepotStart,V2]
 X_ijk[N3,N1,V1] X_ijk[N3,N1,V2] X_ijk[N3,N2,V1] X_ijk[N3,N2,V2]
 X_ijk[N3,N3,V1] X_ijk[N3,N3,V2] X_ijk[N3,N4,V1] X_ijk[N3,N4,V2]
 X_ijk[N3,N5,V1] X_ijk[N3,N5,V2] X_ijk[N3,DepotEnd,V1]
 X_ijk[N3,DepotEnd,V2] X_ijk[N4,DepotStart,V1] X_ijk[N4,DepotStart,V2]
 X_ijk[N4,N1,V1] X_ijk[N4,N1,V2] X_ijk[N4,N2,V1] X_ijk[N4,N2,V2]
 X_ijk[N4,N3,V1] X_ijk[N4,N3,V2] X_ijk[N4,N4,V1] X_ijk[N4,N4,V2]
 X_ijk[N4,N5,V1] X_ijk[N4,N5,V2] X_ijk[N4,DepotEnd,V1]
 X_ijk[N4,DepotEnd,V2] X_ijk[N5,DepotStart,V1] X_ijk[N5,DepotStart,V2]
 X_ijk[N5,N1,V1] X_ijk[N5,N1,V2] X_ijk[N5,N2,V1] X_ijk[N5,N2,V2]
 X_ijk[N5,N3,V1] X_ijk[N5,N3,V2] X_ijk[N5,N4,V1] X_ijk[N5,N4,V2]
 X_ijk[N5,N5,V1] X_ijk[N5,N5,V2] X_ijk[N5,DepotEnd,V1]
 X_ijk[N5,DepotEnd,V2] X_ijk[DepotEnd,DepotStart,V1]
 X_ijk[DepotEnd,DepotStart,V2] X_ijk[DepotEnd,N1,V1] X_ijk[DepotEnd,N1,V2]
 X_ijk[DepotEnd,N2,V1] X_ijk[DepotEnd,N2,V2] X_ijk[DepotEnd,N3,V1]
 X_ijk[DepotEnd,N3,V2] X_ijk[DepotEnd,N4,V1] X_ijk[DepotEnd,N4,V2]
 X_ijk[DepotEnd,N5,V1] X_ijk[DepotEnd,N5,V2] X_ijk[DepotEnd,DepotEnd,V1]
 X_ijk[DepotEnd,DepotEnd,V2]
End
