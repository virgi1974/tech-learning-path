# https://leetcode.com/problems/two-sum/

# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.



# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  checker = {}

  nums.each_with_index do |num, index|
    needed_value = target - num

    if checker.key?(needed_value)
      return [checker[needed_value], index]
    end

    checker[num] = index
  end
end

# Time Complexity: 𝑂(𝑛)
# O(n), since it iterates through the array once.
# Space Complexity: 𝑂(𝑛)
# O(n), because it uses a hash table to store each element and its index.
