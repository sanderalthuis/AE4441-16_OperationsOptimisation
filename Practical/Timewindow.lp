\ Model Time window 1
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  10604 X_ijk[DepotStart,N1,V1] + 10604 X_ijk[DepotStart,N1,V2]
   + 8917 X_ijk[DepotStart,N2,V1] + 8917 X_ijk[DepotStart,N2,V2]
   + 7953 X_ijk[DepotStart,N3,V1] + 7953 X_ijk[DepotStart,N3,V2]
   + 44 X_ijk[N1,DepotStart,V1] + 44 X_ijk[N1,DepotStart,V2]
   + 1687 X_ijk[N1,N2,V1] + 1687 X_ijk[N1,N2,V2] + 9881 X_ijk[N1,N3,V1]
   + 9881 X_ijk[N1,N3,V2] + 10604 X_ijk[N1,DepotEnd,V1]
   + 10604 X_ijk[N1,DepotEnd,V2] + 37 X_ijk[N2,DepotStart,V1]
   + 37 X_ijk[N2,DepotStart,V2] + 1687 X_ijk[N2,N1,V1]
   + 1687 X_ijk[N2,N1,V2] + 8194 X_ijk[N2,N3,V1] + 8194 X_ijk[N2,N3,V2]
   + 8917 X_ijk[N2,DepotEnd,V1] + 8917 X_ijk[N2,DepotEnd,V2]
   + 33 X_ijk[N3,DepotStart,V1] + 33 X_ijk[N3,DepotStart,V2]
   + 9881 X_ijk[N3,N1,V1] + 9881 X_ijk[N3,N1,V2] + 8194 X_ijk[N3,N2,V1]
   + 8194 X_ijk[N3,N2,V2] + 7953 X_ijk[N3,DepotEnd,V1]
   + 7953 X_ijk[N3,DepotEnd,V2] + 44 X_ijk[DepotEnd,N1,V1]
   + 44 X_ijk[DepotEnd,N1,V2] + 37 X_ijk[DepotEnd,N2,V1]
   + 37 X_ijk[DepotEnd,N2,V2] + 33 X_ijk[DepotEnd,N3,V1]
   + 33 X_ijk[DepotEnd,N3,V2] + 200 Constant
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
 R9: X_ijk[DepotStart,DepotStart,V1] + X_ijk[N1,DepotStart,V1]
   + X_ijk[N2,DepotStart,V1] + X_ijk[N3,DepotStart,V1]
   + X_ijk[DepotEnd,DepotStart,V1] = 0
 R10: X_ijk[DepotStart,DepotStart,V2] + X_ijk[N1,DepotStart,V2]
   + X_ijk[N2,DepotStart,V2] + X_ijk[N3,DepotStart,V2]
   + X_ijk[DepotEnd,DepotStart,V2] = 0
 R11: X_ijk[DepotStart,N1,V1] - X_ijk[N1,DepotStart,V1] - X_ijk[N1,N1,V1]
   - X_ijk[N1,N2,V1] - X_ijk[N1,N3,V1] - X_ijk[N1,DepotEnd,V1]
   + X_ijk[N2,N1,V1] + X_ijk[N3,N1,V1] + X_ijk[DepotEnd,N1,V1] = 0
 R12: X_ijk[DepotStart,N1,V2] - X_ijk[N1,DepotStart,V2] - X_ijk[N1,N1,V2]
   - X_ijk[N1,N2,V2] - X_ijk[N1,N3,V2] - X_ijk[N1,DepotEnd,V2]
   + X_ijk[N2,N1,V2] + X_ijk[N3,N1,V2] + X_ijk[DepotEnd,N1,V2] = 0
 R13: X_ijk[DepotStart,N2,V1] + X_ijk[N1,N2,V1] - X_ijk[N2,DepotStart,V1]
   - X_ijk[N2,N1,V1] - X_ijk[N2,N2,V1] - X_ijk[N2,N3,V1]
   - X_ijk[N2,DepotEnd,V1] + X_ijk[N3,N2,V1] + X_ijk[DepotEnd,N2,V1] = 0
 R14: X_ijk[DepotStart,N2,V2] + X_ijk[N1,N2,V2] - X_ijk[N2,DepotStart,V2]
   - X_ijk[N2,N1,V2] - X_ijk[N2,N2,V2] - X_ijk[N2,N3,V2]
   - X_ijk[N2,DepotEnd,V2] + X_ijk[N3,N2,V2] + X_ijk[DepotEnd,N2,V2] = 0
 R15: X_ijk[DepotStart,N3,V1] + X_ijk[N1,N3,V1] + X_ijk[N2,N3,V1]
   - X_ijk[N3,DepotStart,V1] - X_ijk[N3,N1,V1] - X_ijk[N3,N2,V1]
   - X_ijk[N3,N3,V1] - X_ijk[N3,DepotEnd,V1] + X_ijk[DepotEnd,N3,V1] = 0
 R16: X_ijk[DepotStart,N3,V2] + X_ijk[N1,N3,V2] + X_ijk[N2,N3,V2]
   - X_ijk[N3,DepotStart,V2] - X_ijk[N3,N1,V2] - X_ijk[N3,N2,V2]
   - X_ijk[N3,N3,V2] - X_ijk[N3,DepotEnd,V2] + X_ijk[DepotEnd,N3,V2] = 0
 R17: 50000 X_ijk[DepotStart,DepotStart,V1] <= 50000
 R18: 50000 X_ijk[DepotStart,DepotStart,V2] <= 50000
 R19: 50000 X_ijk[DepotStart,N1,V1] + S_ik[DepotStart,V1] - S_ik[N1,V1]
   <= 44720
 R20: 50000 X_ijk[DepotStart,N1,V2] + S_ik[DepotStart,V2] - S_ik[N1,V2]
   <= 44720
 R21: 50000 X_ijk[DepotStart,N2,V1] + S_ik[DepotStart,V1] - S_ik[N2,V1]
   <= 45560
 R22: 50000 X_ijk[DepotStart,N2,V2] + S_ik[DepotStart,V2] - S_ik[N2,V2]
   <= 45560
 R23: 50000 X_ijk[DepotStart,N3,V1] + S_ik[DepotStart,V1] - S_ik[N3,V1]
   <= 46040
 R24: 50000 X_ijk[DepotStart,N3,V2] + S_ik[DepotStart,V2] - S_ik[N3,V2]
   <= 46040
 R25: 50000 X_ijk[DepotStart,DepotEnd,V1] + S_ik[DepotStart,V1]
   - S_ik[DepotEnd,V1] <= 50000
 R26: 50000 X_ijk[DepotStart,DepotEnd,V2] + S_ik[DepotStart,V2]
   - S_ik[DepotEnd,V2] <= 50000
 R27: 50000 X_ijk[N1,DepotStart,V1] - S_ik[DepotStart,V1] + S_ik[N1,V1]
   <= 50000
 R28: 50000 X_ijk[N1,DepotStart,V2] - S_ik[DepotStart,V2] + S_ik[N1,V2]
   <= 50000
 R29: 50000 X_ijk[N1,N1,V1] <= 50000
 R30: 50000 X_ijk[N1,N1,V2] <= 50000
 R31: 50000 X_ijk[N1,N2,V1] + S_ik[N1,V1] - S_ik[N2,V1] <= 49160
 R32: 50000 X_ijk[N1,N2,V2] + S_ik[N1,V2] - S_ik[N2,V2] <= 49160
 R33: 50000 X_ijk[N1,N3,V1] + S_ik[N1,V1] - S_ik[N3,V1] <= 45080
 R34: 50000 X_ijk[N1,N3,V2] + S_ik[N1,V2] - S_ik[N3,V2] <= 45080
 R35: 50000 X_ijk[N1,DepotEnd,V1] + S_ik[N1,V1] - S_ik[DepotEnd,V1]
   <= 44720
 R36: 50000 X_ijk[N1,DepotEnd,V2] + S_ik[N1,V2] - S_ik[DepotEnd,V2]
   <= 44720
 R37: 50000 X_ijk[N2,DepotStart,V1] - S_ik[DepotStart,V1] + S_ik[N2,V1]
   <= 50000
 R38: 50000 X_ijk[N2,DepotStart,V2] - S_ik[DepotStart,V2] + S_ik[N2,V2]
   <= 50000
 R39: 50000 X_ijk[N2,N1,V1] - S_ik[N1,V1] + S_ik[N2,V1] <= 49160
 R40: 50000 X_ijk[N2,N1,V2] - S_ik[N1,V2] + S_ik[N2,V2] <= 49160
 R41: 50000 X_ijk[N2,N2,V1] <= 50000
 R42: 50000 X_ijk[N2,N2,V2] <= 50000
 R43: 50000 X_ijk[N2,N3,V1] + S_ik[N2,V1] - S_ik[N3,V1] <= 45920
 R44: 50000 X_ijk[N2,N3,V2] + S_ik[N2,V2] - S_ik[N3,V2] <= 45920
 R45: 50000 X_ijk[N2,DepotEnd,V1] + S_ik[N2,V1] - S_ik[DepotEnd,V1]
   <= 45560
 R46: 50000 X_ijk[N2,DepotEnd,V2] + S_ik[N2,V2] - S_ik[DepotEnd,V2]
   <= 45560
 R47: 50000 X_ijk[N3,DepotStart,V1] - S_ik[DepotStart,V1] + S_ik[N3,V1]
   <= 50000
 R48: 50000 X_ijk[N3,DepotStart,V2] - S_ik[DepotStart,V2] + S_ik[N3,V2]
   <= 50000
 R49: 50000 X_ijk[N3,N1,V1] - S_ik[N1,V1] + S_ik[N3,V1] <= 45080
 R50: 50000 X_ijk[N3,N1,V2] - S_ik[N1,V2] + S_ik[N3,V2] <= 45080
 R51: 50000 X_ijk[N3,N2,V1] - S_ik[N2,V1] + S_ik[N3,V1] <= 45920
 R52: 50000 X_ijk[N3,N2,V2] - S_ik[N2,V2] + S_ik[N3,V2] <= 45920
 R53: 50000 X_ijk[N3,N3,V1] <= 50000
 R54: 50000 X_ijk[N3,N3,V2] <= 50000
 R55: 50000 X_ijk[N3,DepotEnd,V1] + S_ik[N3,V1] - S_ik[DepotEnd,V1]
   <= 46040
 R56: 50000 X_ijk[N3,DepotEnd,V2] + S_ik[N3,V2] - S_ik[DepotEnd,V2]
   <= 46040
 R57: 50000 X_ijk[DepotEnd,DepotStart,V1] - S_ik[DepotStart,V1]
   + S_ik[DepotEnd,V1] <= 50000
 R58: 50000 X_ijk[DepotEnd,DepotStart,V2] - S_ik[DepotStart,V2]
   + S_ik[DepotEnd,V2] <= 50000
 R59: 50000 X_ijk[DepotEnd,N1,V1] - S_ik[N1,V1] + S_ik[DepotEnd,V1]
   <= 50000
 R60: 50000 X_ijk[DepotEnd,N1,V2] - S_ik[N1,V2] + S_ik[DepotEnd,V2]
   <= 50000
 R61: 50000 X_ijk[DepotEnd,N2,V1] - S_ik[N2,V1] + S_ik[DepotEnd,V1]
   <= 50000
 R62: 50000 X_ijk[DepotEnd,N2,V2] - S_ik[N2,V2] + S_ik[DepotEnd,V2]
   <= 50000
 R63: 50000 X_ijk[DepotEnd,N3,V1] - S_ik[N3,V1] + S_ik[DepotEnd,V1]
   <= 50000
 R64: 50000 X_ijk[DepotEnd,N3,V2] - S_ik[N3,V2] + S_ik[DepotEnd,V2]
   <= 50000
 R65: 50000 X_ijk[DepotEnd,DepotEnd,V1] <= 50000
 R66: 50000 X_ijk[DepotEnd,DepotEnd,V2] <= 50000
 R67: S_ik[DepotStart,V1] >= 1
 R68: S_ik[DepotStart,V1] <= 3600
 R69: S_ik[DepotStart,V2] >= 1
 R70: S_ik[DepotStart,V2] <= 3600
 R71: S_ik[N1,V1] >= 3600
 R72: S_ik[N1,V1] <= 18000
 R73: S_ik[N1,V2] >= 3600
 R74: S_ik[N1,V2] <= 18000
 R75: S_ik[N2,V1] >= 18000
 R76: S_ik[N2,V1] <= 32400
 R77: S_ik[N2,V2] >= 18000
 R78: S_ik[N2,V2] <= 32400
 R79: S_ik[N3,V1] >= 7200
 R80: S_ik[N3,V1] <= 21600
 R81: S_ik[N3,V2] >= 7200
 R82: S_ik[N3,V2] <= 21600
 R83: S_ik[DepotEnd,V1] >= 1
 R84: S_ik[DepotEnd,V1] <= 64800
 R85: S_ik[DepotEnd,V2] >= 1
 R86: S_ik[DepotEnd,V2] <= 64800
 R87: X_ijk[N1,DepotStart,V1] + X_ijk[N1,N1,V1] + X_ijk[N1,N2,V1]
   + X_ijk[N1,N3,V1] + X_ijk[N1,DepotEnd,V1] + 3 X_ijk[N2,DepotStart,V1]
   + 3 X_ijk[N2,N1,V1] + 3 X_ijk[N2,N2,V1] + 3 X_ijk[N2,N3,V1]
   + 3 X_ijk[N2,DepotEnd,V1] + 4 X_ijk[N3,DepotStart,V1]
   + 4 X_ijk[N3,N1,V1] + 4 X_ijk[N3,N2,V1] + 4 X_ijk[N3,N3,V1]
   + 4 X_ijk[N3,DepotEnd,V1] <= 80
 R88: X_ijk[N1,DepotStart,V2] + X_ijk[N1,N1,V2] + X_ijk[N1,N2,V2]
   + X_ijk[N1,N3,V2] + X_ijk[N1,DepotEnd,V2] + 3 X_ijk[N2,DepotStart,V2]
   + 3 X_ijk[N2,N1,V2] + 3 X_ijk[N2,N2,V2] + 3 X_ijk[N2,N3,V2]
   + 3 X_ijk[N2,DepotEnd,V2] + 4 X_ijk[N3,DepotStart,V2]
   + 4 X_ijk[N3,N1,V2] + 4 X_ijk[N3,N2,V2] + 4 X_ijk[N3,N3,V2]
   + 4 X_ijk[N3,DepotEnd,V2] <= 80
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
