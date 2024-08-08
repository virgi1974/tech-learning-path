require "pry"

# Given an integer array nums, move all 0's to the end of it while maintaining
# the relative order of the non-zero elements.

# Note that you must do this in-place without making a copy of the array.



# Example 1:
  # Input: nums = [0,1,0,3,12]
  # Output: [1,3,12,0,0]
# Example 2:
  # Input: nums = [0]
  # Output: [0]

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  zero_index = nums[0] == 0 ? 0 : nil

  nums.each_with_index do |num, index|
    if num == 0
      next if zero_index

      zero_index = index
    end

    if num != 0 && zero_index
      nums[zero_index] = num
      nums[index] = 0
      zero_index += 1
    end
  end

  nums
end

nums = [0,1,0,3,12]
puts "nums: #{nums.inspect}"
move_zeroes(nums)
puts "nums: #{nums.inspect}"
