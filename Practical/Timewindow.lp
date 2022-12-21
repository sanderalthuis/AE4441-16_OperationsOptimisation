\ Model Time window 1
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  7471 X_ijk[DepotStart,N1,V1] + 7471 X_ijk[DepotStart,N1,V2]
   + 12773 X_ijk[DepotStart,N2,V1] + 12773 X_ijk[DepotStart,N2,V2]
   + 3615 X_ijk[DepotStart,N3,V1] + 3615 X_ijk[DepotStart,N3,V2]
   + 31 X_ijk[N1,DepotStart,V1] + 31 X_ijk[N1,DepotStart,V2]
   + 5302 X_ijk[N1,N2,V1] + 5302 X_ijk[N1,N2,V2] + 4820 X_ijk[N1,N3,V1]
   + 4820 X_ijk[N1,N3,V2] + 7471 X_ijk[N1,DepotEnd,V1]
   + 7471 X_ijk[N1,DepotEnd,V2] + 53 X_ijk[N2,DepotStart,V1]
   + 53 X_ijk[N2,DepotStart,V2] + 5302 X_ijk[N2,N1,V1]
   + 5302 X_ijk[N2,N1,V2] + 10122 X_ijk[N2,N3,V1] + 10122 X_ijk[N2,N3,V2]
   + 12773 X_ijk[N2,DepotEnd,V1] + 12773 X_ijk[N2,DepotEnd,V2]
   + 15 X_ijk[N3,DepotStart,V1] + 15 X_ijk[N3,DepotStart,V2]
   + 4820 X_ijk[N3,N1,V1] + 4820 X_ijk[N3,N1,V2] + 10122 X_ijk[N3,N2,V1]
   + 10122 X_ijk[N3,N2,V2] + 3615 X_ijk[N3,DepotEnd,V1]
   + 3615 X_ijk[N3,DepotEnd,V2] + 31 X_ijk[DepotEnd,N1,V1]
   + 31 X_ijk[DepotEnd,N1,V2] + 53 X_ijk[DepotEnd,N2,V1]
   + 53 X_ijk[DepotEnd,N2,V2] + 15 X_ijk[DepotEnd,N3,V1]
   + 15 X_ijk[DepotEnd,N3,V2] + 200 Constant
Subject To
 R0: X_ijk[N1,DepotStart,V1] + X_ijk[N1,DepotStart,V2] + X_ijk[N1,N1,V1]
   + X_ijk[N1,N1,V2] + X_ijk[N1,N2,V1] + X_ijk[N1,N2,V2] + X_ijk[N1,N3,V1]
   + X_ijk[N1,N3,V2] + X_ijk[N1,DepotEnd,V1] + X_ijk[N1,DepotEnd,V2] = 1
 R1: X_ijk[N2,DepotStart,V1] + X_ijk[N2,DepotStart,V2] + X_ijk[N2,N1,V1]
   + X_ijk[N2,N1,V2] + X_ijk[N2,N2,V1] + X_ijk[N2,N2,V2] + X_ijk[N2,N3,V1]
   + X_ijk[N2,N3,V2] + X_ijk[N2,DepotEnd,V1] + X_ijk[N2,DepotEnd,V2] = 1
 R2: X_ijk[N3,DepotStart,V1] + X_ijk[N3,DepotStart,V2] + X_ijk[N3,N1,V1]
   + X_ijk[N3,N1,V2] + X_ijk[N3,N2,V1] + X_ijk[N3,N2,V2] + X_ijk[N3,N3,V1]
   + X_ijk[N3,N3,V2] + X_ijk[N3,DepotEnd,V1] + X_ijk[N3,DepotEnd,V2] = 1
 R3: X_ijk[DepotEnd,DepotStart,V1] + X_ijk[DepotEnd,N1,V1]
   + X_ijk[DepotEnd,N2,V1] + X_ijk[DepotEnd,N3,V1]
   + X_ijk[DepotEnd,DepotEnd,V1] = 0
 R4: X_ijk[DepotEnd,DepotStart,V2] + X_ijk[DepotEnd,N1,V2]
   + X_ijk[DepotEnd,N2,V2] + X_ijk[DepotEnd,N3,V2]
   + X_ijk[DepotEnd,DepotEnd,V2] = 0
 R5: X_ijk[DepotStart,DepotEnd,V1] + X_ijk[N1,DepotEnd,V1]
   + X_ijk[N2,DepotEnd,V1] + X_ijk[N3,DepotEnd,V1]
   + X_ijk[DepotEnd,DepotEnd,V1] = 1
 R6: X_ijk[DepotStart,DepotEnd,V2] + X_ijk[N1,DepotEnd,V2]
   + X_ijk[N2,DepotEnd,V2] + X_ijk[N3,DepotEnd,V2]
   + X_ijk[DepotEnd,DepotEnd,V2] = 1
 R7: X_ijk[DepotStart,DepotStart,V1] + X_ijk[DepotStart,N1,V1]
   + X_ijk[DepotStart,N2,V1] + X_ijk[DepotStart,N3,V1]
   + X_ijk[DepotStart,DepotEnd,V1] = 1
 R8: X_ijk[DepotStart,DepotStart,V2] + X_ijk[DepotStart,N1,V2]
   + X_ijk[DepotStart,N2,V2] + X_ijk[DepotStart,N3,V2]
   + X_ijk[DepotStart,DepotEnd,V2] = 1
 R9: X_ijk[DepotStart,DepotEnd,V1] = 0
 R10: X_ijk[DepotStart,DepotEnd,V2] = 0
 R11: X_ijk[DepotStart,DepotStart,V1] + X_ijk[N1,DepotStart,V1]
   + X_ijk[N2,DepotStart,V1] + X_ijk[N3,DepotStart,V1]
   + X_ijk[DepotEnd,DepotStart,V1] = 0
 R12: X_ijk[DepotStart,DepotStart,V2] + X_ijk[N1,DepotStart,V2]
   + X_ijk[N2,DepotStart,V2] + X_ijk[N3,DepotStart,V2]
   + X_ijk[DepotEnd,DepotStart,V2] = 0
 R13: X_ijk[DepotStart,N1,V1] - X_ijk[N1,DepotStart,V1] - X_ijk[N1,N1,V1]
   - X_ijk[N1,N2,V1] - X_ijk[N1,N3,V1] - X_ijk[N1,DepotEnd,V1]
   + X_ijk[N2,N1,V1] + X_ijk[N3,N1,V1] + X_ijk[DepotEnd,N1,V1] = 0
 R14: X_ijk[DepotStart,N1,V2] - X_ijk[N1,DepotStart,V2] - X_ijk[N1,N1,V2]
   - X_ijk[N1,N2,V2] - X_ijk[N1,N3,V2] - X_ijk[N1,DepotEnd,V2]
   + X_ijk[N2,N1,V2] + X_ijk[N3,N1,V2] + X_ijk[DepotEnd,N1,V2] = 0
 R15: X_ijk[DepotStart,N2,V1] + X_ijk[N1,N2,V1] - X_ijk[N2,DepotStart,V1]
   - X_ijk[N2,N1,V1] - X_ijk[N2,N2,V1] - X_ijk[N2,N3,V1]
   - X_ijk[N2,DepotEnd,V1] + X_ijk[N3,N2,V1] + X_ijk[DepotEnd,N2,V1] = 0
 R16: X_ijk[DepotStart,N2,V2] + X_ijk[N1,N2,V2] - X_ijk[N2,DepotStart,V2]
   - X_ijk[N2,N1,V2] - X_ijk[N2,N2,V2] - X_ijk[N2,N3,V2]
   - X_ijk[N2,DepotEnd,V2] + X_ijk[N3,N2,V2] + X_ijk[DepotEnd,N2,V2] = 0
 R17: X_ijk[DepotStart,N3,V1] + X_ijk[N1,N3,V1] + X_ijk[N2,N3,V1]
   - X_ijk[N3,DepotStart,V1] - X_ijk[N3,N1,V1] - X_ijk[N3,N2,V1]
   - X_ijk[N3,N3,V1] - X_ijk[N3,DepotEnd,V1] + X_ijk[DepotEnd,N3,V1] = 0
 R18: X_ijk[DepotStart,N3,V2] + X_ijk[N1,N3,V2] + X_ijk[N2,N3,V2]
   - X_ijk[N3,DepotStart,V2] - X_ijk[N3,N1,V2] - X_ijk[N3,N2,V2]
   - X_ijk[N3,N3,V2] - X_ijk[N3,DepotEnd,V2] + X_ijk[DepotEnd,N3,V2] = 0
 R19: S_ik[DepotStart,V1] >= 1
 R20: S_ik[DepotStart,V1] <= 3600
 R21: S_ik[DepotStart,V2] >= 1
 R22: S_ik[DepotStart,V2] <= 3600
 R23: S_ik[N1,V1] >= 21600
 R24: S_ik[N1,V1] <= 50400
 R25: S_ik[N1,V2] >= 21600
 R26: S_ik[N1,V2] <= 50400
 R27: S_ik[N2,V1] >= 10800
 R28: S_ik[N2,V1] <= 39600
 R29: S_ik[N2,V2] >= 10800
 R30: S_ik[N2,V2] <= 39600
 R31: S_ik[N3,V1] >= 3600
 R32: S_ik[N3,V1] <= 32400
 R33: S_ik[N3,V2] >= 3600
 R34: S_ik[N3,V2] <= 32400
 R35: S_ik[DepotEnd,V1] >= 1
 R36: S_ik[DepotEnd,V1] <= 100800
 R37: S_ik[DepotEnd,V2] >= 1
 R38: S_ik[DepotEnd,V2] <= 100800
 R39: 8 X_ijk[N1,DepotStart,V1] + 8 X_ijk[N1,N1,V1] + 8 X_ijk[N1,N2,V1]
   + 8 X_ijk[N1,N3,V1] + 8 X_ijk[N1,DepotEnd,V1]
   + 8 X_ijk[N2,DepotStart,V1] + 8 X_ijk[N2,N1,V1] + 8 X_ijk[N2,N2,V1]
   + 8 X_ijk[N2,N3,V1] + 8 X_ijk[N2,DepotEnd,V1]
   + 9 X_ijk[N3,DepotStart,V1] + 9 X_ijk[N3,N1,V1] + 9 X_ijk[N3,N2,V1]
   + 9 X_ijk[N3,N3,V1] + 9 X_ijk[N3,DepotEnd,V1] <= 80
 R40: 8 X_ijk[N1,DepotStart,V2] + 8 X_ijk[N1,N1,V2] + 8 X_ijk[N1,N2,V2]
   + 8 X_ijk[N1,N3,V2] + 8 X_ijk[N1,DepotEnd,V2]
   + 8 X_ijk[N2,DepotStart,V2] + 8 X_ijk[N2,N1,V2] + 8 X_ijk[N2,N2,V2]
   + 8 X_ijk[N2,N3,V2] + 8 X_ijk[N2,DepotEnd,V2]
   + 9 X_ijk[N3,DepotStart,V2] + 9 X_ijk[N3,N1,V2] + 9 X_ijk[N3,N2,V2]
   + 9 X_ijk[N3,N3,V2] + 9 X_ijk[N3,DepotEnd,V2] <= 80
Bounds
 Constant = 1
Binaries
 X_ijk[DepotStart,DepotStart,V1] X_ijk[DepotStart,DepotStart,V2]
 X_ijk[DepotStart,N1,V1] X_ijk[DepotStart,N1,V2] X_ijk[DepotStart,N2,V1]
 X_ijk[DepotStart,N2,V2] X_ijk[DepotStart,N3,V1] X_ijk[DepotStart,N3,V2]
 X_ijk[DepotStart,DepotEnd,V1] X_ijk[DepotStart,DepotEnd,V2]
 X_ijk[N1,DepotStart,V1] X_ijk[N1,DepotStart,V2] X_ijk[N1,N1,V1]
 X_ijk[N1,N1,V2] X_ijk[N1,N2,V1] X_ijk[N1,N2,V2] X_ijk[N1,N3,V1]
 X_ijk[N1,N3,V2] X_ijk[N1,DepotEnd,V1] X_ijk[N1,DepotEnd,V2]
 X_ijk[N2,DepotStart,V1] X_ijk[N2,DepotStart,V2] X_ijk[N2,N1,V1]
 X_ijk[N2,N1,V2] X_ijk[N2,N2,V1] X_ijk[N2,N2,V2] X_ijk[N2,N3,V1]
 X_ijk[N2,N3,V2] X_ijk[N2,DepotEnd,V1] X_ijk[N2,DepotEnd,V2]
 X_ijk[N3,DepotStart,V1] X_ijk[N3,DepotStart,V2] X_ijk[N3,N1,V1]
 X_ijk[N3,N1,V2] X_ijk[N3,N2,V1] X_ijk[N3,N2,V2] X_ijk[N3,N3,V1]
 X_ijk[N3,N3,V2] X_ijk[N3,DepotEnd,V1] X_ijk[N3,DepotEnd,V2]
 X_ijk[DepotEnd,DepotStart,V1] X_ijk[DepotEnd,DepotStart,V2]
 X_ijk[DepotEnd,N1,V1] X_ijk[DepotEnd,N1,V2] X_ijk[DepotEnd,N2,V1]
 X_ijk[DepotEnd,N2,V2] X_ijk[DepotEnd,N3,V1] X_ijk[DepotEnd,N3,V2]
 X_ijk[DepotEnd,DepotEnd,V1] X_ijk[DepotEnd,DepotEnd,V2]
End
