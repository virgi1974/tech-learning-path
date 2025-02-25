#Reversal Algorithm for array rotation
#Time complexity : O(n), Auxiliary space: O(n)

# not in-place rotation -> Auxiliary space: O(n)

# This algorithm uses two pointers: one starting at the beginning of the array and one at the end.
# You swap the elements at these pointers and move the pointers towards each other until they meet

# intial state
# [1,2,3,4,5,6,7]
# final state
# [7,6,5,4,3,2,1]

def reverse(nums)
  new_nums = []

  nums.reverse_each do |num|
    new_nums << num
  end

  new_nums
end

nums = [1,2,3,4,5,6,7]
result = reverse(nums)
puts result.inspect
