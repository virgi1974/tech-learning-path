# TWO POINTER TECHNIQUE
# nums are sorted.
# we need to track the last unique element (starting from the first element wich is unique).
# We just need to move to the next element if the current element is the same as the previous element.
# But if the current element is different from the previous element, we need:
# - update the index of the last unique element (+1)
# - update the value at that position(last unique element ) with the current element.

# Time Complexity:
# O(n) -> we loop twice but O(n) + O(n) = O(n)
# Space Complexity:
# O(1) -> modification in-place

# @param {Integer[]} nums
# @return {Integer}

# Input: nums = [0,0,1,1,1,2,2,3,3,4] nums is sorted
# Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
def remove_duplicates(nums)
  array_size = nums.length
  last_unique_index = 0

  1.upto(array_size - 1) do |current_index|
    if nums[current_index] != nums[last_unique_index]
      last_unique_index += 1
      nums[last_unique_index] = nums[current_index]
    end
  end

  # (last_unique_index + 1).upto(array_size - 1) do |index|
  #   nums[index] = "_"
  # end

  # return the number of unique elements
  last_unique_index + 1
end

# nums = [0,0,1,1,1,2,2,3,3,4]
# puts nums.inspect
# remove_duplicates(nums)
