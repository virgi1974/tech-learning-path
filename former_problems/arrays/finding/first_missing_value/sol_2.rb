# Given a sorted array of integers, find the first missing number

# Time Complexity O(n)
# Space Complexity O(n)

def find_first_missing_value(nums)
  original_array.tally.select { |_, count| count > 1 }.keys
end

nums = [4,5,8]
missing_value = find_first_missing_value(nums)
puts "missing_value = #{missing_value}"
# => val is now 6
