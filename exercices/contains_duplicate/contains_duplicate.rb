# Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

# Example 1:

# Input: nums= [1, 2, 3, 4]
# Output: false
# Explanation: There are no duplicates in the given array.
# Example 2:

# Input: nums= [1, 2, 3, 1]
# Output: true
# Explanation: '1' is repeating.
def contains_duplicate(nums)
  repeated = false

  nums.inject(Hash.new(0)) do |acc, val|
    if acc.key?(val)
      repeated = true
      break
    end

    acc[val] += 1
    acc
  end
  repeated
end
