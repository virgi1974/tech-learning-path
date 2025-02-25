# Given a sorted array of integers, find the first missing number

def find_first_missing_value(nums)
  val = nums[0]

  while nums.include?(val)
    val += 1
  end

  val
end

nums = [4,5,8]
missing_value = find_first_missing_value(nums)
puts "missing_value = #{missing_value}"
# => val is now 6
