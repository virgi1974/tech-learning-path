#Reversal Algorithm for array rotation
#Time complexity : O(n), Auxiliary space: O(1)

# This algorithm uses two pointers: one starting at the beginning of the array and one at the end.
# You swap the elements at these pointers and move the pointers towards each other until they meet

# initial state
  # [1,2,3,4,5,6,7]
# final state
  #   [1,2,3,4,5,6,7] if k = 0
  #   [1,2,3,4,5,7,6] if k = 1
  #   [1,2,3,4,7,6,5] if k = 2

def reverse(nums, k)
  size = nums.size
  return nums if size == 1
  return nums if k == 0

  if k > size
    k = k % size
  end

  last_pointer = size - 1
  init_pointer = last_pointer - k

  while init_pointer < last_pointer
    tmp = nums[init_pointer]
    nums[init_pointer] = nums[last_pointer]
    nums[last_pointer] = tmp

    init_pointer += 1
    last_pointer -= 1
  end

  nums
end

# nums = [1,2,3,4,5,6,7]
# reverse(nums, 1)
# puts "1 => #{nums}"

# nums = [1,2,3,4,5,6,7]
# reverse(nums, 9)
# puts "8 => #{nums}"

# nums = [1,2,3,4,5,6,7]
# reverse(nums, 2)
# puts "2 => #{nums}"

# nums = [1,2,3,4,5,6,7]
# reverse(nums, 3)
# puts "3 => #{nums}"
