# @nums: List of integers with a single zero
# we need to rotate the list to the left until the zero is at the beginning of the list
def rotate_left_till_zero(nums)
  while nums[0] != 0
    first_value = nums.shift
    nums.push(first_value)
  end

  nums
end

print("----")
print([1, 2, 0, 3])
print(rotate_left_till_zero([1, 2, 0, 3]))
print("----")
print([7, 6, 4, 2, 8, 0])
print(rotate_left_till_zero([7, 6, 4, 2, 8, 0]))
print("----")
print([0, 3, 4, 6, 3])
print(rotate_left_till_zero([0, 3, 4, 6, 3]))
