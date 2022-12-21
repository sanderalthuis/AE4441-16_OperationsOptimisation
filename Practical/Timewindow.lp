\ Model Time window 1
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  1446 X_ijk[DepotStart,N1,V1] + 1446 X_ijk[DepotStart,N1,V2]
   + 3133 X_ijk[DepotStart,N2,V1] + 3133 X_ijk[DepotStart,N2,V2]
   + 2651 X_ijk[DepotStart,N3,V1] + 2651 X_ijk[DepotStart,N3,V2]
   + 6 X_ijk[N1,DepotStart,V1] + 6 X_ijk[N1,DepotStart,V2]
   + 4579 X_ijk[N1,N2,V1] + 4579 X_ijk[N1,N2,V2] + 1205 X_ijk[N1,N3,V1]
   + 1205 X_ijk[N1,N3,V2] + 1446 X_ijk[N1,DepotEnd,V1]
   + 1446 X_ijk[N1,DepotEnd,V2] + 13 X_ijk[N2,DepotStart,V1]
   + 13 X_ijk[N2,DepotStart,V2] + 4579 X_ijk[N2,N1,V1]
   + 4579 X_ijk[N2,N1,V2] + 3374 X_ijk[N2,N3,V1] + 3374 X_ijk[N2,N3,V2]
   + 3133 X_ijk[N2,DepotEnd,V1] + 3133 X_ijk[N2,DepotEnd,V2]
   + 11 X_ijk[N3,DepotStart,V1] + 11 X_ijk[N3,DepotStart,V2]
   + 1205 X_ijk[N3,N1,V1] + 1205 X_ijk[N3,N1,V2] + 3374 X_ijk[N3,N2,V1]
   + 3374 X_ijk[N3,N2,V2] + 2651 X_ijk[N3,DepotEnd,V1]
   + 2651 X_ijk[N3,DepotEnd,V2] + 6 X_ijk[DepotEnd,N1,V1]
   + 6 X_ijk[DepotEnd,N1,V2] + 13 X_ijk[DepotEnd,N2,V1]
   + 13 X_ijk[DepotEnd,N2,V2] + 11 X_ijk[DepotEnd,N3,V1]
   + 11 X_ijk[DepotEnd,N3,V2] + 200 Constant
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
 R3: X_ijk[DepotStart,DepotStart,V1] + X_ijk[DepotStart,N1,V1]
   + X_ijk[DepotStart,N2,V1] + X_ijk[DepotStart,N3,V1]
   + X_ijk[DepotStart,DepotEnd,V1] = 1
 R4: X_ijk[DepotStart,DepotStart,V2] + X_ijk[DepotStart,N1,V2]
   + X_ijk[DepotStart,N2,V2] + X_ijk[DepotStart,N3,V2]
   + X_ijk[DepotStart,DepotEnd,V2] = 1
 R5: - X_ijk[DepotStart,DepotStart,V1] - X_ijk[DepotStart,N1,V1]
   - X_ijk[DepotStart,N2,V1] - X_ijk[DepotStart,N3,V1]
   - X_ijk[DepotStart,DepotEnd,V1] + X_ijk[N1,DepotStart,V1]
   + X_ijk[N2,DepotStart,V1] + X_ijk[N3,DepotStart,V1]
   + X_ijk[DepotEnd,DepotStart,V1] = 0
 R6: - X_ijk[DepotStart,DepotStart,V2] - X_ijk[DepotStart,N1,V2]
   - X_ijk[DepotStart,N2,V2] - X_ijk[DepotStart,N3,V2]
   - X_ijk[DepotStart,DepotEnd,V2] + X_ijk[N1,DepotStart,V2]
   + X_ijk[N2,DepotStart,V2] + X_ijk[N3,DepotStart,V2]
   + X_ijk[DepotEnd,DepotStart,V2] = 0
 R7: X_ijk[DepotStart,N1,V1] - X_ijk[N1,DepotStart,V1] - X_ijk[N1,N1,V1]
   - X_ijk[N1,N2,V1] - X_ijk[N1,N3,V1] - X_ijk[N1,DepotEnd,V1]
   + X_ijk[N2,N1,V1] + X_ijk[N3,N1,V1] + X_ijk[DepotEnd,N1,V1] = 0
 R8: X_ijk[DepotStart,N1,V2] - X_ijk[N1,DepotStart,V2] - X_ijk[N1,N1,V2]
   - X_ijk[N1,N2,V2] - X_ijk[N1,N3,V2] - X_ijk[N1,DepotEnd,V2]
   + X_ijk[N2,N1,V2] + X_ijk[N3,N1,V2] + X_ijk[DepotEnd,N1,V2] = 0
 R9: X_ijk[DepotStart,N2,V1] + X_ijk[N1,N2,V1] - X_ijk[N2,DepotStart,V1]
   - X_ijk[N2,N1,V1] - X_ijk[N2,N2,V1] - X_ijk[N2,N3,V1]
   - X_ijk[N2,DepotEnd,V1] + X_ijk[N3,N2,V1] + X_ijk[DepotEnd,N2,V1] = 0
 R10: X_ijk[DepotStart,N2,V2] + X_ijk[N1,N2,V2] - X_ijk[N2,DepotStart,V2]
   - X_ijk[N2,N1,V2] - X_ijk[N2,N2,V2] - X_ijk[N2,N3,V2]
   - X_ijk[N2,DepotEnd,V2] + X_ijk[N3,N2,V2] + X_ijk[DepotEnd,N2,V2] = 0
 R11: X_ijk[DepotStart,N3,V1] + X_ijk[N1,N3,V1] + X_ijk[N2,N3,V1]
   - X_ijk[N3,DepotStart,V1] - X_ijk[N3,N1,V1] - X_ijk[N3,N2,V1]
   - X_ijk[N3,N3,V1] - X_ijk[N3,DepotEnd,V1] + X_ijk[DepotEnd,N3,V1] = 0
 R12: X_ijk[DepotStart,N3,V2] + X_ijk[N1,N3,V2] + X_ijk[N2,N3,V2]
   - X_ijk[N3,DepotStart,V2] - X_ijk[N3,N1,V2] - X_ijk[N3,N2,V2]
   - X_ijk[N3,N3,V2] - X_ijk[N3,DepotEnd,V2] + X_ijk[DepotEnd,N3,V2] = 0
 R13: X_ijk[DepotStart,DepotEnd,V1] + X_ijk[N1,DepotEnd,V1]
   + X_ijk[N2,DepotEnd,V1] + X_ijk[N3,DepotEnd,V1]
   - X_ijk[DepotEnd,DepotStart,V1] - X_ijk[DepotEnd,N1,V1]
   - X_ijk[DepotEnd,N2,V1] - X_ijk[DepotEnd,N3,V1]
   - X_ijk[DepotEnd,DepotEnd,V1] = 0
 R14: X_ijk[DepotStart,DepotEnd,V2] + X_ijk[N1,DepotEnd,V2]
   + X_ijk[N2,DepotEnd,V2] + X_ijk[N3,DepotEnd,V2]
   - X_ijk[DepotEnd,DepotStart,V2] - X_ijk[DepotEnd,N1,V2]
   - X_ijk[DepotEnd,N2,V2] - X_ijk[DepotEnd,N3,V2]
   - X_ijk[DepotEnd,DepotEnd,V2] = 0
 R15: S_ik[DepotStart,V1] >= 1
 R16: S_ik[DepotStart,V1] <= 3600
 R17: S_ik[DepotStart,V2] >= 1
 R18: S_ik[DepotStart,V2] <= 3600
 R19: S_ik[N1,V1] >= 21600
 R20: S_ik[N1,V1] <= 23400
 R21: S_ik[N1,V2] >= 21600
 R22: S_ik[N1,V2] <= 23400
 R23: S_ik[N2,V1] >= 18000
 R24: S_ik[N2,V1] <= 19800
 R25: S_ik[N2,V2] >= 18000
 R26: S_ik[N2,V2] <= 19800
 R27: S_ik[N3,V1] >= 3600
 R28: S_ik[N3,V1] <= 5400
 R29: S_ik[N3,V2] >= 3600
 R30: S_ik[N3,V2] <= 5400
 R31: S_ik[DepotEnd,V1] >= 1
 R32: S_ik[DepotEnd,V1] <= 46800
 R33: S_ik[DepotEnd,V2] >= 1
 R34: S_ik[DepotEnd,V2] <= 46800
 R35: X_ijk[N1,DepotStart,V1] + X_ijk[N1,N1,V1] + X_ijk[N1,N2,V1]
   + X_ijk[N1,N3,V1] + X_ijk[N1,DepotEnd,V1] + X_ijk[N2,DepotStart,V1]
   + X_ijk[N2,N1,V1] + X_ijk[N2,N2,V1] + X_ijk[N2,N3,V1]
   + X_ijk[N2,DepotEnd,V1] + 5 X_ijk[N3,DepotStart,V1] + 5 X_ijk[N3,N1,V1]
   + 5 X_ijk[N3,N2,V1] + 5 X_ijk[N3,N3,V1] + 5 X_ijk[N3,DepotEnd,V1] <= 80
 R36: X_ijk[N1,DepotStart,V2] + X_ijk[N1,N1,V2] + X_ijk[N1,N2,V2]
   + X_ijk[N1,N3,V2] + X_ijk[N1,DepotEnd,V2] + X_ijk[N2,DepotStart,V2]
   + X_ijk[N2,N1,V2] + X_ijk[N2,N2,V2] + X_ijk[N2,N3,V2]
   + X_ijk[N2,DepotEnd,V2] + 5 X_ijk[N3,DepotStart,V2] + 5 X_ijk[N3,N1,V2]
   + 5 X_ijk[N3,N2,V2] + 5 X_ijk[N3,N3,V2] + 5 X_ijk[N3,DepotEnd,V2] <= 80
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
