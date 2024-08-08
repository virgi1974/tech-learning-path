# solution with a linear runtime complexity and use only constant extra space

# XOR operator

# Example 1:
#   Input: nums = [2,2,1]
#   Output: 1
# Example 2:
#   Input: nums = [4,1,2,1,2]
#   Output: 4
# Example 3:
#   Input: nums = [1]
#   Output: 1

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.reduce { |x,y| x ^ y }
end

# # EXPLANATION
# 1 ^ 1 => 0
# 1 ^ 0 => 1
# 0 ^ 1 => 1
# 0 ^ 0 => 0

# [4,1,2,1,2]
# 4 ^ 1 => 5
# 5 ^ 2 => 7
# 7 ^ 1 => 6
# 6 ^ 2 => 4 #!!!! at the end we get the single number

nums = [4,1,2,1,2]
# nums = [2,2,1]
result = single_number(nums)
puts "result = #{result}"
