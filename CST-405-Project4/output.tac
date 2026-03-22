Unoptimized Three-Address Code (TAC)
=====================================
Intermediate representation with functions

  1: FUNC_BEGIN __mod
  2: PARAM a
  3: PARAM b
  4: DECL q
  5: t0 = a / b
  6: q = t0
  7: t0 = q * b
  8: t1 = a - t0
  9: RETURN t1
 10: FUNC_END __mod
 11: FUNC_BEGIN main
 12: DECL i
 13: DECL sum
 14: DECL result
 15: DECL x
 16: PRINT 111
 17: sum = 0
 18: i = 0
 19: L0:
 20: t1 = i < 5
 21: IF_FALSE t1 GOTO L1
 22: t1 = sum + i
 23: sum = t1
 24: t1 = i + 1
 25: i = t1
 26: GOTO L0
 27: L1:
 28: PRINT sum
 29: PRINT 222
 30: sum = 0
 31: i = 1
 32: L2:
 33: t1 = i <= 5
 34: IF_FALSE t1 GOTO L3
 35: t1 = sum + i
 36: sum = t1
 37: t1 = i + 1
 38: i = t1
 39: GOTO L2
 40: L3:
 41: PRINT sum
 42: PRINT 333
 43: sum = 0
 44: i = 10
 45: DECL _do0
 46: _do0 = 1
 47: L4:
 48: IF_FALSE _do0 GOTO L5
 49: t1 = sum + i
 50: sum = t1
 51: t1 = i + 1
 52: i = t1
 53: t1 = i < 5
 54: _do0 = t1
 55: GOTO L4
 56: L5:
 57: PRINT sum
 58: PRINT 444
 59: t1 = 3 * 4
 60: t0 = 2 + t1
 61: result = t0
 62: PRINT result
 63: t0 = 2 + 3
 64: t1 = t0 * 4
 65: result = t1
 66: PRINT result
 67: t1 = 2 * 3
 68: t0 = 10 - t1
 69: t1 = t0 + 1
 70: result = t1
 71: PRINT result
 72: t1 = 100 / 5
 73: t0 = t1 / 2
 74: result = t0
 75: PRINT result
 76: PRINT 555
 77: ARG 10
 78: ARG 3
 79: t0 = CALL __mod, 2
 80: result = t0
 81: PRINT result
 82: ARG 7
 83: ARG 2
 84: t0 = CALL __mod, 2
 85: result = t0
 86: PRINT result
 87: ARG 10
 88: ARG 3
 89: t0 = CALL __mod, 2
 90: t1 = 2 + t0
 91: result = t1
 92: PRINT result
 93: PRINT 666
 94: sum = 0
 95: i = 0
 96: L6:
 97: t1 = i < 2
 98: IF_FALSE t1 GOTO L7
 99: x = 1
100: L8:
101: t1 = x <= 2
102: IF_FALSE t1 GOTO L9
103: t1 = sum + 1
104: sum = t1
105: t1 = x + 1
106: x = t1
107: GOTO L8
108: L9:
109: t1 = i + 1
110: i = t1
111: GOTO L6
112: L7:
113: PRINT sum
114: RETURN 0
115: FUNC_END main
