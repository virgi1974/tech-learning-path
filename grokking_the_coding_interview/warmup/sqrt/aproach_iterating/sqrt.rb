# Problem Statement
# Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.

# You must not use any built-in exponent function or operator.

# For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.

# Example 1:

# Input: x = 8
# Output: 2
# Explanation: The square root of 8 is 2.8284, and since we need to return the floor of the square root (integer), hence we returned 2.
# Example 2:

# Input: x = 4
# Output: 2
# Explanation: The square root of 4 is 2.
# Example 3:

# Input: x = 2
# Output: 1
# Explanation: The square root of 2 is 1.414, and since we need to return the floor of the square root (integer), hence we returned 1.

def my_sqrt(x)
  return 0 if x.zero?

  (1..x/2).each do |i|
    current_square = i * i
    if current_square > x
      return i - 1
    end
  end
end
