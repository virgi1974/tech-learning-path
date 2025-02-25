#Reversal Algorithm for array rotation
#Time complexity : O(n), Auxiliary space: O(n)

# [1,2,3,4,5,6,7]
# final state
#   [1,2,3,4,5,6,7] if k = 0
#   [7,1,2,3,4,5,6] if k = 1
#   [6,7,1,2,3,4,5] if k = 2
#   [5,6,7,1,2,3,4] if k = 3

# using additional space for intermediate arrays
def rotate(nums, k)
  last_array = nums.slice(-k, k)
  remaining_array = nums.slice(0, nums.size - k)

  # concatenate the 2 parts
  last_array + remaining_array
end

result = rotate([1,2,3,4,5,6,7], 3)
puts "result = #{result}"
