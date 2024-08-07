#Reversal Algorithm for array rotation
#Time complexity : O(n), Auxiliary space: O(1)

# in-place rotation

# This algorithm uses two pointers: one starting at the beginning of the array and one at the end.
# You swap the elements at these pointers and move the pointers towards each other until they meet

# intial state
# [1,2,3,4,5,6,7]
# final state
# [7,6,5,4,3,2,1]

def reverse(nums)
  size = nums.size
  return nums if size == 1

  init_pointer = 0
  last_pointer = size - 1

  while init_pointer < last_pointer
    tmp = nums[init_pointer]
    nums[init_pointer] = nums[last_pointer]
    nums[last_pointer] = tmp

    init_pointer += 1
    last_pointer -= 1
  end

  nums
end

nums = [1,2,3,4,5,6,7]
reverse(nums)
puts nums.inspect
