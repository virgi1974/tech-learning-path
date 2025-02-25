import math

class Solution:
  def mySqrt(self, x: int) -> int:
    # Return 0 if x is 0
    if x == 0:
        return 0

    # Iterate from 1 to x to find the integer square root
    for i in range(1, x + 1):
        current_square = i * i
        if current_square > x:
            return i - 1

    return x
