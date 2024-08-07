#Reversal Algorithm for array rotation
#Time complexity : O(1), Auxiliary space: O(1)
# O(1) -> rotate! modifies the original array in place.

# [1,2,3,4,5,6,7]
# final state
#   [1,2,3,4,5,6,7] if k = 0
#   [7,1,2,3,4,5,6] if k = 1
#   [6,7,1,2,3,4,5] if k = 2
#   [5,6,7,1,2,3,4] if k = 3

# using additional space for intermediate arrays
def rotate(nums, k)
  nums.rotate!(-k)
end

result = rotate([1,2,3,4,5,6,7], 3)
puts "result = #{result}"
