\ Model Time window 1
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  6025 X_ijk[DepotStart,N1,V1] + 6025 X_ijk[DepotStart,N1,V2]
   + 1928 X_ijk[DepotStart,N2,V1] + 1928 X_ijk[DepotStart,N2,V2]
   + 8676 X_ijk[DepotStart,N3,V1] + 8676 X_ijk[DepotStart,N3,V2]
   + 2651 X_ijk[DepotStart,N4,V1] + 2651 X_ijk[DepotStart,N4,V2]
   + 25 X_ijk[N1,DepotStart,V1] + 25 X_ijk[N1,DepotStart,V2]
   + 4097 X_ijk[N1,N2,V1] + 4097 X_ijk[N1,N2,V2] + 2651 X_ijk[N1,N3,V1]
   + 2651 X_ijk[N1,N3,V2] + 8676 X_ijk[N1,N4,V1] + 8676 X_ijk[N1,N4,V2]
   + 6025 X_ijk[N1,DepotEnd,V1] + 6025 X_ijk[N1,DepotEnd,V2]
   + 8 X_ijk[N2,DepotStart,V1] + 8 X_ijk[N2,DepotStart,V2]
   + 4097 X_ijk[N2,N1,V1] + 4097 X_ijk[N2,N1,V2] + 6748 X_ijk[N2,N3,V1]
   + 6748 X_ijk[N2,N3,V2] + 4579 X_ijk[N2,N4,V1] + 4579 X_ijk[N2,N4,V2]
   + 1928 X_ijk[N2,DepotEnd,V1] + 1928 X_ijk[N2,DepotEnd,V2]
   + 36 X_ijk[N3,DepotStart,V1] + 36 X_ijk[N3,DepotStart,V2]
   + 2651 X_ijk[N3,N1,V1] + 2651 X_ijk[N3,N1,V2] + 6748 X_ijk[N3,N2,V1]
   + 6748 X_ijk[N3,N2,V2] + 11327 X_ijk[N3,N4,V1] + 11327 X_ijk[N3,N4,V2]
   + 8676 X_ijk[N3,DepotEnd,V1] + 8676 X_ijk[N3,DepotEnd,V2]
   + 11 X_ijk[N4,DepotStart,V1] + 11 X_ijk[N4,DepotStart,V2]
   + 8676 X_ijk[N4,N1,V1] + 8676 X_ijk[N4,N1,V2] + 4579 X_ijk[N4,N2,V1]
   + 4579 X_ijk[N4,N2,V2] + 11327 X_ijk[N4,N3,V1] + 11327 X_ijk[N4,N3,V2]
   + 2651 X_ijk[N4,DepotEnd,V1] + 2651 X_ijk[N4,DepotEnd,V2]
   + 25 X_ijk[DepotEnd,N1,V1] + 25 X_ijk[DepotEnd,N1,V2]
   + 8 X_ijk[DepotEnd,N2,V1] + 8 X_ijk[DepotEnd,N2,V2]
   + 36 X_ijk[DepotEnd,N3,V1] + 36 X_ijk[DepotEnd,N3,V2]
   + 11 X_ijk[DepotEnd,N4,V1] + 11 X_ijk[DepotEnd,N4,V2] + 200 Constant
Subject To
 R0: X_ijk[N1,DepotStart,V1] + X_ijk[N1,DepotStart,V2] + X_ijk[N1,N1,V1]
   + X_ijk[N1,N1,V2] + X_ijk[N1,N2,V1] + X_ijk[N1,N2,V2] + X_ijk[N1,N3,V1]
   + X_ijk[N1,N3,V2] + X_ijk[N1,N4,V1] + X_ijk[N1,N4,V2]
   + X_ijk[N1,DepotEnd,V1] + X_ijk[N1,DepotEnd,V2] = 1
 R1: X_ijk[N2,DepotStart,V1] + X_ijk[N2,DepotStart,V2] + X_ijk[N2,N1,V1]
   + X_ijk[N2,N1,V2] + X_ijk[N2,N2,V1] + X_ijk[N2,N2,V2] + X_ijk[N2,N3,V1]
   + X_ijk[N2,N3,V2] + X_ijk[N2,N4,V1] + X_ijk[N2,N4,V2]
   + X_ijk[N2,DepotEnd,V1] + X_ijk[N2,DepotEnd,V2] = 1
 R2: X_ijk[N3,DepotStart,V1] + X_ijk[N3,DepotStart,V2] + X_ijk[N3,N1,V1]
   + X_ijk[N3,N1,V2] + X_ijk[N3,N2,V1] + X_ijk[N3,N2,V2] + X_ijk[N3,N3,V1]
   + X_ijk[N3,N3,V2] + X_ijk[N3,N4,V1] + X_ijk[N3,N4,V2]
   + X_ijk[N3,DepotEnd,V1] + X_ijk[N3,DepotEnd,V2] = 1
 R3: X_ijk[N4,DepotStart,V1] + X_ijk[N4,DepotStart,V2] + X_ijk[N4,N1,V1]
   + X_ijk[N4,N1,V2] + X_ijk[N4,N2,V1] + X_ijk[N4,N2,V2] + X_ijk[N4,N3,V1]
   + X_ijk[N4,N3,V2] + X_ijk[N4,N4,V1] + X_ijk[N4,N4,V2]
   + X_ijk[N4,DepotEnd,V1] + X_ijk[N4,DepotEnd,V2] = 1
 R4: X_ijk[DepotStart,DepotStart,V1] + X_ijk[DepotStart,N1,V1]
   + X_ijk[DepotStart,N2,V1] + X_ijk[DepotStart,N3,V1]
   + X_ijk[DepotStart,N4,V1] + X_ijk[DepotStart,DepotEnd,V1] = 1
 R5: X_ijk[DepotStart,DepotStart,V2] + X_ijk[DepotStart,N1,V2]
   + X_ijk[DepotStart,N2,V2] + X_ijk[DepotStart,N3,V2]
   + X_ijk[DepotStart,N4,V2] + X_ijk[DepotStart,DepotEnd,V2] = 1
 R6: - X_ijk[DepotStart,DepotStart,V1] - X_ijk[DepotStart,N1,V1]
   - X_ijk[DepotStart,N2,V1] - X_ijk[DepotStart,N3,V1]
   - X_ijk[DepotStart,N4,V1] - X_ijk[DepotStart,DepotEnd,V1]
   + X_ijk[N1,DepotStart,V1] + X_ijk[N2,DepotStart,V1]
   + X_ijk[N3,DepotStart,V1] + X_ijk[N4,DepotStart,V1]
   + X_ijk[DepotEnd,DepotStart,V1] = 0
 R7: - X_ijk[DepotStart,DepotStart,V2] - X_ijk[DepotStart,N1,V2]
   - X_ijk[DepotStart,N2,V2] - X_ijk[DepotStart,N3,V2]
   - X_ijk[DepotStart,N4,V2] - X_ijk[DepotStart,DepotEnd,V2]
   + X_ijk[N1,DepotStart,V2] + X_ijk[N2,DepotStart,V2]
   + X_ijk[N3,DepotStart,V2] + X_ijk[N4,DepotStart,V2]
   + X_ijk[DepotEnd,DepotStart,V2] = 0
 R8: X_ijk[DepotStart,N1,V1] - X_ijk[N1,DepotStart,V1] - X_ijk[N1,N1,V1]
   - X_ijk[N1,N2,V1] - X_ijk[N1,N3,V1] - X_ijk[N1,N4,V1]
   - X_ijk[N1,DepotEnd,V1] + X_ijk[N2,N1,V1] + X_ijk[N3,N1,V1]
   + X_ijk[N4,N1,V1] + X_ijk[DepotEnd,N1,V1] = 0
 R9: X_ijk[DepotStart,N1,V2] - X_ijk[N1,DepotStart,V2] - X_ijk[N1,N1,V2]
   - X_ijk[N1,N2,V2] - X_ijk[N1,N3,V2] - X_ijk[N1,N4,V2]
   - X_ijk[N1,DepotEnd,V2] + X_ijk[N2,N1,V2] + X_ijk[N3,N1,V2]
   + X_ijk[N4,N1,V2] + X_ijk[DepotEnd,N1,V2] = 0
 R10: X_ijk[DepotStart,N2,V1] + X_ijk[N1,N2,V1] - X_ijk[N2,DepotStart,V1]
   - X_ijk[N2,N1,V1] - X_ijk[N2,N2,V1] - X_ijk[N2,N3,V1] - X_ijk[N2,N4,V1]
   - X_ijk[N2,DepotEnd,V1] + X_ijk[N3,N2,V1] + X_ijk[N4,N2,V1]
   + X_ijk[DepotEnd,N2,V1] = 0
 R11: X_ijk[DepotStart,N2,V2] + X_ijk[N1,N2,V2] - X_ijk[N2,DepotStart,V2]
   - X_ijk[N2,N1,V2] - X_ijk[N2,N2,V2] - X_ijk[N2,N3,V2] - X_ijk[N2,N4,V2]
   - X_ijk[N2,DepotEnd,V2] + X_ijk[N3,N2,V2] + X_ijk[N4,N2,V2]
   + X_ijk[DepotEnd,N2,V2] = 0
 R12: X_ijk[DepotStart,N3,V1] + X_ijk[N1,N3,V1] + X_ijk[N2,N3,V1]
   - X_ijk[N3,DepotStart,V1] - X_ijk[N3,N1,V1] - X_ijk[N3,N2,V1]
   - X_ijk[N3,N3,V1] - X_ijk[N3,N4,V1] - X_ijk[N3,DepotEnd,V1]
   + X_ijk[N4,N3,V1] + X_ijk[DepotEnd,N3,V1] = 0
 R13: X_ijk[DepotStart,N3,V2] + X_ijk[N1,N3,V2] + X_ijk[N2,N3,V2]
   - X_ijk[N3,DepotStart,V2] - X_ijk[N3,N1,V2] - X_ijk[N3,N2,V2]
   - X_ijk[N3,N3,V2] - X_ijk[N3,N4,V2] - X_ijk[N3,DepotEnd,V2]
   + X_ijk[N4,N3,V2] + X_ijk[DepotEnd,N3,V2] = 0
 R14: X_ijk[DepotStart,N4,V1] + X_ijk[N1,N4,V1] + X_ijk[N2,N4,V1]
   + X_ijk[N3,N4,V1] - X_ijk[N4,DepotStart,V1] - X_ijk[N4,N1,V1]
   - X_ijk[N4,N2,V1] - X_ijk[N4,N3,V1] - X_ijk[N4,N4,V1]
   - X_ijk[N4,DepotEnd,V1] + X_ijk[DepotEnd,N4,V1] = 0
 R15: X_ijk[DepotStart,N4,V2] + X_ijk[N1,N4,V2] + X_ijk[N2,N4,V2]
   + X_ijk[N3,N4,V2] - X_ijk[N4,DepotStart,V2] - X_ijk[N4,N1,V2]
   - X_ijk[N4,N2,V2] - X_ijk[N4,N3,V2] - X_ijk[N4,N4,V2]
   - X_ijk[N4,DepotEnd,V2] + X_ijk[DepotEnd,N4,V2] = 0
 R16: X_ijk[DepotStart,DepotEnd,V1] + X_ijk[N1,DepotEnd,V1]
   + X_ijk[N2,DepotEnd,V1] + X_ijk[N3,DepotEnd,V1] + X_ijk[N4,DepotEnd,V1]
   - X_ijk[DepotEnd,DepotStart,V1] - X_ijk[DepotEnd,N1,V1]
   - X_ijk[DepotEnd,N2,V1] - X_ijk[DepotEnd,N3,V1] - X_ijk[DepotEnd,N4,V1]
   - X_ijk[DepotEnd,DepotEnd,V1] = 0
 R17: X_ijk[DepotStart,DepotEnd,V2] + X_ijk[N1,DepotEnd,V2]
   + X_ijk[N2,DepotEnd,V2] + X_ijk[N3,DepotEnd,V2] + X_ijk[N4,DepotEnd,V2]
   - X_ijk[DepotEnd,DepotStart,V2] - X_ijk[DepotEnd,N1,V2]
   - X_ijk[DepotEnd,N2,V2] - X_ijk[DepotEnd,N3,V2] - X_ijk[DepotEnd,N4,V2]
   - X_ijk[DepotEnd,DepotEnd,V2] = 0
 R18: 5000 X_ijk[DepotStart,DepotStart,V1] <= 5000
 R19: 5000 X_ijk[DepotStart,DepotStart,V2] <= 5000
 R20: 5000 X_ijk[DepotStart,N1,V1] + S_ik[DepotStart,V1] - S_ik[N1,V1]
   <= 2000
 R21: 5000 X_ijk[DepotStart,N1,V2] + S_ik[DepotStart,V2] - S_ik[N1,V2]
   <= 2000
 R22: 5000 X_ijk[DepotStart,N2,V1] + S_ik[DepotStart,V1] - S_ik[N2,V1]
   <= 4040
 R23: 5000 X_ijk[DepotStart,N2,V2] + S_ik[DepotStart,V2] - S_ik[N2,V2]
   <= 4040
 R24: 5000 X_ijk[DepotStart,N3,V1] + S_ik[DepotStart,V1] - S_ik[N3,V1]
   <= 680
 R25: 5000 X_ijk[DepotStart,N3,V2] + S_ik[DepotStart,V2] - S_ik[N3,V2]
   <= 680
 R26: 5000 X_ijk[DepotStart,N4,V1] + S_ik[DepotStart,V1] - S_ik[N4,V1]
   <= 3680
 R27: 5000 X_ijk[DepotStart,N4,V2] + S_ik[DepotStart,V2] - S_ik[N4,V2]
   <= 3680
 R28: 5000 X_ijk[DepotStart,DepotEnd,V1] + S_ik[DepotStart,V1]
   - S_ik[DepotEnd,V1] <= 5000
 R29: 5000 X_ijk[DepotStart,DepotEnd,V2] + S_ik[DepotStart,V2]
   - S_ik[DepotEnd,V2] <= 5000
 R30: 5000 X_ijk[N1,DepotStart,V1] - S_ik[DepotStart,V1] + S_ik[N1,V1]
   <= 5000
 R31: 5000 X_ijk[N1,DepotStart,V2] - S_ik[DepotStart,V2] + S_ik[N1,V2]
   <= 5000
 R32: 5000 X_ijk[N1,N1,V1] <= 5000
 R33: 5000 X_ijk[N1,N1,V2] <= 5000
 R34: 5000 X_ijk[N1,N2,V1] + S_ik[N1,V1] - S_ik[N2,V1] <= 2960
 R35: 5000 X_ijk[N1,N2,V2] + S_ik[N1,V2] - S_ik[N2,V2] <= 2960
 R36: 5000 X_ijk[N1,N3,V1] + S_ik[N1,V1] - S_ik[N3,V1] <= 3680
 R37: 5000 X_ijk[N1,N3,V2] + S_ik[N1,V2] - S_ik[N3,V2] <= 3680
 R38: 5000 X_ijk[N1,N4,V1] + S_ik[N1,V1] - S_ik[N4,V1] <= 680
 R39: 5000 X_ijk[N1,N4,V2] + S_ik[N1,V2] - S_ik[N4,V2] <= 680
 R40: 5000 X_ijk[N1,DepotEnd,V1] + S_ik[N1,V1] - S_ik[DepotEnd,V1] <= 2000
 R41: 5000 X_ijk[N1,DepotEnd,V2] + S_ik[N1,V2] - S_ik[DepotEnd,V2] <= 2000
 R42: 5000 X_ijk[N2,DepotStart,V1] - S_ik[DepotStart,V1] + S_ik[N2,V1]
   <= 5000
 R43: 5000 X_ijk[N2,DepotStart,V2] - S_ik[DepotStart,V2] + S_ik[N2,V2]
   <= 5000
 R44: 5000 X_ijk[N2,N1,V1] - S_ik[N1,V1] + S_ik[N2,V1] <= 2960
 R45: 5000 X_ijk[N2,N1,V2] - S_ik[N1,V2] + S_ik[N2,V2] <= 2960
 R46: 5000 X_ijk[N2,N2,V1] <= 5000
 R47: 5000 X_ijk[N2,N2,V2] <= 5000
 R48: 5000 X_ijk[N2,N3,V1] + S_ik[N2,V1] - S_ik[N3,V1] <= 1640
 R49: 5000 X_ijk[N2,N3,V2] + S_ik[N2,V2] - S_ik[N3,V2] <= 1640
 R50: 5000 X_ijk[N2,N4,V1] + S_ik[N2,V1] - S_ik[N4,V1] <= 2720
 R51: 5000 X_ijk[N2,N4,V2] + S_ik[N2,V2] - S_ik[N4,V2] <= 2720
 R52: 5000 X_ijk[N2,DepotEnd,V1] + S_ik[N2,V1] - S_ik[DepotEnd,V1] <= 4040
 R53: 5000 X_ijk[N2,DepotEnd,V2] + S_ik[N2,V2] - S_ik[DepotEnd,V2] <= 4040
 R54: 5000 X_ijk[N3,DepotStart,V1] - S_ik[DepotStart,V1] + S_ik[N3,V1]
   <= 5000
 R55: 5000 X_ijk[N3,DepotStart,V2] - S_ik[DepotStart,V2] + S_ik[N3,V2]
   <= 5000
 R56: 5000 X_ijk[N3,N1,V1] - S_ik[N1,V1] + S_ik[N3,V1] <= 3680
 R57: 5000 X_ijk[N3,N1,V2] - S_ik[N1,V2] + S_ik[N3,V2] <= 3680
 R58: 5000 X_ijk[N3,N2,V1] - S_ik[N2,V1] + S_ik[N3,V1] <= 1640
 R59: 5000 X_ijk[N3,N2,V2] - S_ik[N2,V2] + S_ik[N3,V2] <= 1640
 R60: 5000 X_ijk[N3,N3,V1] <= 5000
 R61: 5000 X_ijk[N3,N3,V2] <= 5000
 R62: 5000 X_ijk[N3,N4,V1] + S_ik[N3,V1] - S_ik[N4,V1] <= -640
 R63: 5000 X_ijk[N3,N4,V2] + S_ik[N3,V2] - S_ik[N4,V2] <= -640
 R64: 5000 X_ijk[N3,DepotEnd,V1] + S_ik[N3,V1] - S_ik[DepotEnd,V1] <= 680
 R65: 5000 X_ijk[N3,DepotEnd,V2] + S_ik[N3,V2] - S_ik[DepotEnd,V2] <= 680
 R66: 5000 X_ijk[N4,DepotStart,V1] - S_ik[DepotStart,V1] + S_ik[N4,V1]
   <= 5000
 R67: 5000 X_ijk[N4,DepotStart,V2] - S_ik[DepotStart,V2] + S_ik[N4,V2]
   <= 5000
 R68: 5000 X_ijk[N4,N1,V1] - S_ik[N1,V1] + S_ik[N4,V1] <= 680
 R69: 5000 X_ijk[N4,N1,V2] - S_ik[N1,V2] + S_ik[N4,V2] <= 680
 R70: 5000 X_ijk[N4,N2,V1] - S_ik[N2,V1] + S_ik[N4,V1] <= 2720
 R71: 5000 X_ijk[N4,N2,V2] - S_ik[N2,V2] + S_ik[N4,V2] <= 2720
 R72: 5000 X_ijk[N4,N3,V1] - S_ik[N3,V1] + S_ik[N4,V1] <= -640
 R73: 5000 X_ijk[N4,N3,V2] - S_ik[N3,V2] + S_ik[N4,V2] <= -640
 R74: 5000 X_ijk[N4,N4,V1] <= 5000
 R75: 5000 X_ijk[N4,N4,V2] <= 5000
 R76: 5000 X_ijk[N4,DepotEnd,V1] + S_ik[N4,V1] - S_ik[DepotEnd,V1] <= 3680
 R77: 5000 X_ijk[N4,DepotEnd,V2] + S_ik[N4,V2] - S_ik[DepotEnd,V2] <= 3680
 R78: 5000 X_ijk[DepotEnd,DepotStart,V1] - S_ik[DepotStart,V1]
   + S_ik[DepotEnd,V1] <= 5000
 R79: 5000 X_ijk[DepotEnd,DepotStart,V2] - S_ik[DepotStart,V2]
   + S_ik[DepotEnd,V2] <= 5000
 R80: 5000 X_ijk[DepotEnd,N1,V1] - S_ik[N1,V1] + S_ik[DepotEnd,V1] <= 5000
 R81: 5000 X_ijk[DepotEnd,N1,V2] - S_ik[N1,V2] + S_ik[DepotEnd,V2] <= 5000
 R82: 5000 X_ijk[DepotEnd,N2,V1] - S_ik[N2,V1] + S_ik[DepotEnd,V1] <= 5000
 R83: 5000 X_ijk[DepotEnd,N2,V2] - S_ik[N2,V2] + S_ik[DepotEnd,V2] <= 5000
 R84: 5000 X_ijk[DepotEnd,N3,V1] - S_ik[N3,V1] + S_ik[DepotEnd,V1] <= 5000
 R85: 5000 X_ijk[DepotEnd,N3,V2] - S_ik[N3,V2] + S_ik[DepotEnd,V2] <= 5000
 R86: 5000 X_ijk[DepotEnd,N4,V1] - S_ik[N4,V1] + S_ik[DepotEnd,V1] <= 5000
 R87: 5000 X_ijk[DepotEnd,N4,V2] - S_ik[N4,V2] + S_ik[DepotEnd,V2] <= 5000
 R88: 5000 X_ijk[DepotEnd,DepotEnd,V1] <= 5000
 R89: 5000 X_ijk[DepotEnd,DepotEnd,V2] <= 5000
 R90: S_ik[DepotStart,V1] >= 1
 R91: S_ik[DepotStart,V1] <= 10800
 R92: S_ik[DepotStart,V2] >= 1
 R93: S_ik[DepotStart,V2] <= 10800
 R94: S_ik[N1,V1] >= 14400
 R95: S_ik[N1,V1] <= 18000
 R96: S_ik[N1,V2] >= 14400
 R97: S_ik[N1,V2] <= 18000
 R98: S_ik[N2,V1] >= 32400
 R99: S_ik[N2,V1] <= 34200
 R100: S_ik[N2,V2] >= 32400
 R101: S_ik[N2,V2] <= 34200
 R102: S_ik[N3,V1] >= 18000
 R103: S_ik[N3,V1] <= 21600
 R104: S_ik[N3,V2] >= 18000
 R105: S_ik[N3,V2] <= 21600
 R106: S_ik[N4,V1] >= 10800
 R107: S_ik[N4,V1] <= 14400
 R108: S_ik[N4,V2] >= 10800
 R109: S_ik[N4,V2] <= 14400
 R110: S_ik[DepotEnd,V1] >= 1
 R111: S_ik[DepotEnd,V1] <= 68400
 R112: S_ik[DepotEnd,V2] >= 1
 R113: S_ik[DepotEnd,V2] <= 68400
 R114: 4 X_ijk[N1,DepotStart,V1] + 4 X_ijk[N1,N1,V1] + 4 X_ijk[N1,N2,V1]
   + 4 X_ijk[N1,N3,V1] + 4 X_ijk[N1,N4,V1] + 4 X_ijk[N1,DepotEnd,V1]
   + 3 X_ijk[N2,DepotStart,V1] + 3 X_ijk[N2,N1,V1] + 3 X_ijk[N2,N2,V1]
   + 3 X_ijk[N2,N3,V1] + 3 X_ijk[N2,N4,V1] + 3 X_ijk[N2,DepotEnd,V1]
   + 5 X_ijk[N3,DepotStart,V1] + 5 X_ijk[N3,N1,V1] + 5 X_ijk[N3,N2,V1]
   + 5 X_ijk[N3,N3,V1] + 5 X_ijk[N3,N4,V1] + 5 X_ijk[N3,DepotEnd,V1]
   + 4 X_ijk[N4,DepotStart,V1] + 4 X_ijk[N4,N1,V1] + 4 X_ijk[N4,N2,V1]
   + 4 X_ijk[N4,N3,V1] + 4 X_ijk[N4,N4,V1] + 4 X_ijk[N4,DepotEnd,V1] <= 80
 R115: 4 X_ijk[N1,DepotStart,V2] + 4 X_ijk[N1,N1,V2] + 4 X_ijk[N1,N2,V2]
   + 4 X_ijk[N1,N3,V2] + 4 X_ijk[N1,N4,V2] + 4 X_ijk[N1,DepotEnd,V2]
   + 3 X_ijk[N2,DepotStart,V2] + 3 X_ijk[N2,N1,V2] + 3 X_ijk[N2,N2,V2]
   + 3 X_ijk[N2,N3,V2] + 3 X_ijk[N2,N4,V2] + 3 X_ijk[N2,DepotEnd,V2]
   + 5 X_ijk[N3,DepotStart,V2] + 5 X_ijk[N3,N1,V2] + 5 X_ijk[N3,N2,V2]
   + 5 X_ijk[N3,N3,V2] + 5 X_ijk[N3,N4,V2] + 5 X_ijk[N3,DepotEnd,V2]
   + 4 X_ijk[N4,DepotStart,V2] + 4 X_ijk[N4,N1,V2] + 4 X_ijk[N4,N2,V2]
   + 4 X_ijk[N4,N3,V2] + 4 X_ijk[N4,N4,V2] + 4 X_ijk[N4,DepotEnd,V2] <= 80
Bounds
 Constant = 1
Binaries
 X_ijk[DepotStart,DepotStart,V1] X_ijk[DepotStart,DepotStart,V2]
 X_ijk[DepotStart,N1,V1] X_ijk[DepotStart,N1,V2] X_ijk[DepotStart,N2,V1]
 X_ijk[DepotStart,N2,V2] X_ijk[DepotStart,N3,V1] X_ijk[DepotStart,N3,V2]
 X_ijk[DepotStart,N4,V1] X_ijk[DepotStart,N4,V2]
 X_ijk[DepotStart,DepotEnd,V1] X_ijk[DepotStart,DepotEnd,V2]
 X_ijk[N1,DepotStart,V1] X_ijk[N1,DepotStart,V2] X_ijk[N1,N1,V1]
 X_ijk[N1,N1,V2] X_ijk[N1,N2,V1] X_ijk[N1,N2,V2] X_ijk[N1,N3,V1]
 X_ijk[N1,N3,V2] X_ijk[N1,N4,V1] X_ijk[N1,N4,V2] X_ijk[N1,DepotEnd,V1]
 X_ijk[N1,DepotEnd,V2] X_ijk[N2,DepotStart,V1] X_ijk[N2,DepotStart,V2]
 X_ijk[N2,N1,V1] X_ijk[N2,N1,V2] X_ijk[N2,N2,V1] X_ijk[N2,N2,V2]
 X_ijk[N2,N3,V1] X_ijk[N2,N3,V2] X_ijk[N2,N4,V1] X_ijk[N2,N4,V2]
 X_ijk[N2,DepotEnd,V1] X_ijk[N2,DepotEnd,V2] X_ijk[N3,DepotStart,V1]
 X_ijk[N3,DepotStart,V2] X_ijk[N3,N1,V1] X_ijk[N3,N1,V2] X_ijk[N3,N2,V1]
 X_ijk[N3,N2,V2] X_ijk[N3,N3,V1] X_ijk[N3,N3,V2] X_ijk[N3,N4,V1]
 X_ijk[N3,N4,V2] X_ijk[N3,DepotEnd,V1] X_ijk[N3,DepotEnd,V2]
 X_ijk[N4,DepotStart,V1] X_ijk[N4,DepotStart,V2] X_ijk[N4,N1,V1]
 X_ijk[N4,N1,V2] X_ijk[N4,N2,V1] X_ijk[N4,N2,V2] X_ijk[N4,N3,V1]
 X_ijk[N4,N3,V2] X_ijk[N4,N4,V1] X_ijk[N4,N4,V2] X_ijk[N4,DepotEnd,V1]
 X_ijk[N4,DepotEnd,V2] X_ijk[DepotEnd,DepotStart,V1]
 X_ijk[DepotEnd,DepotStart,V2] X_ijk[DepotEnd,N1,V1] X_ijk[DepotEnd,N1,V2]
 X_ijk[DepotEnd,N2,V1] X_ijk[DepotEnd,N2,V2] X_ijk[DepotEnd,N3,V1]
 X_ijk[DepotEnd,N3,V2] X_ijk[DepotEnd,N4,V1] X_ijk[DepotEnd,N4,V2]
 X_ijk[DepotEnd,DepotEnd,V1] X_ijk[DepotEnd,DepotEnd,V2]
End
