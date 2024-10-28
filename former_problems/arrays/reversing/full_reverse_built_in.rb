#Reversal Algorithm for array rotation
#Time complexity : O(n), Auxiliary space: O(1)
# O(1) -> The reverse! method performs the reversal in place

# intial state
# [1,2,3,4,5,6,7]
# final state
# [7,6,5,4,3,2,1]

def reverse(nums)
  nums.reverse!
end

nums = [1,2,3,4,5,6,7]
reverse(nums)
puts nums.inspect
