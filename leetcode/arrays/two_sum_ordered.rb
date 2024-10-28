## TWO POINTER

# Example
# [1,2,3,5] target 5

# [1]-[5] 6 <-
# [1]-[3] 4 ->
# [2]-[3] 5 -> target !!

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  # pointers
  left = 0
  right = nums.length - 1

  # Loop until the pointers meet
  while left < right
      sum = nums[left] + nums[right]

      if sum == target
          return [left, right]
      elsif sum < target
          # Move the left pointer to the right
          left += 1
      else
          # Move the right pointer to the left
          right -= 1
      end
  end

  []
end
