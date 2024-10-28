# solution with a linear runtime complexity and use only constant extra space

# Example 1:
#   Input: nums = [2,2,1]
#   Output: 1
# Example 2:
#   Input: nums = [4,1,2,1,2]
#   Output: 4
# Example 3:
#   Input: nums = [1]
#   Output: 1

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  return nums[0] if nums.size == 1
  nums.sort!

  nums.each_with_index do |num, index|
    next if index.odd?

    pair = nums[index..-1].shift(2)
    puts "pair = #{pair}"
    error_candidate = pair[0] != pair[1]
    if error_candidate
      # it is pair[0] if pair[1] == nums[0]
      return pair[1] == nums[0] ? pair[1] : pair[0]
    end
  end
end

# nums = [4,1,2,1,2]
nums = [2,2,1]
result = single_number(nums)
puts "result = #{result}"
