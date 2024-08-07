#Reversal Algorithm for array rotation
#Time complexity : O(n), Auxiliary space: O(1)

# [1,2,3,4,5,6,7]
# final state
#   [1,2,3,4,5,6,7] if k = 0
#   [7,1,2,3,4,5,6] if k = 1
#   [6,7,1,2,3,4,5] if k = 2
#   [5,6,7,1,2,3,4] if k = 3

# [1,2], k
#     [2,1] #1
#     [1,2] #2
#     [2,1] #3
#     [1,2] #4

# [1,2,3], k
#     [3,1,2] #1
#     [2,3,1] #2
#     [1,2,3] #3
#     [3,1,2] #4
#     [2,3,1] #5
#     [1,2,3] #6

# without using additional space for intermediate arrays
def rotate(nums, k)
  size = nums.size
  return nums if size == 1
  return nums if k == size

  if k > size
    k = k % size
  end

  # Reverse Entire Array:
    # Before: [1, 2, 3, 4, 5, 6, 7]
    # After: [7, 6, 5, 4, 3, 2, 1]
  rotate_full_array(nums)

  # Reverse First 3 Elements:
    # Before: [7, 6, 5, 4, 3, 2, 1]
    # After: [5, 6, 7, 4, 3, 2, 1]
  rotate_first_section(nums, k)

  # Reverse Remaining 4 Elements:
    # Before: [5, 6, 7, 4, 3, 2, 1]
    # After: [5, 6, 7, 1, 2, 3, 4]
  rotate_last_section(nums, k)

  nums
end

def rotate_section(nums, init_pointer, last_pointer)
  while init_pointer < last_pointer
    tmp = nums[init_pointer]
    nums[init_pointer] = nums[last_pointer]
    nums[last_pointer] = tmp

    init_pointer += 1
    last_pointer -= 1
  end
end

def rotate_full_array(nums)
  init_pointer = 0
  last_pointer = nums.size - 1
  rotate_section(nums, init_pointer, last_pointer)
end

def rotate_first_section(nums, k)
  init_pointer = 0
  last_pointer = k - 1
  rotate_section(nums, init_pointer, last_pointer)
end

def rotate_last_section(nums, k)
  init_pointer = k
  last_pointer = nums.size - 1
  rotate_section(nums, init_pointer, last_pointer)
end

# result = rotate([1,2,3,4,5,6,7], 3)
# result = rotate([1,2,3], 3)
# result = rotate([1,2], 3)
# result = rotate([1,2], 5)

# input = [-1,-100,3,99]
# result = rotate(input, 2)
# expected = [3,99,-1,-100]
# puts "input = #{input}"
# puts "expected = #{expected}"
# puts "result = #{result}"
# puts "#{result == expected}"

# input = [1,2]
# result = rotate(input, 5)
# expected = [2,1]
# puts "input = #{input}"
# puts "expected = #{expected}"
# puts "result = #{result}"
# puts "#{result == expected}"
