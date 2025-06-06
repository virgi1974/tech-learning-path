require "pry"
# Given two integer arrays nums1 and nums2, return an array of their intersection.
# Each element in the result must appear as many times as it shows in both arrays
# and you may return the result in any order.

# Example 1:
#   Input: nums1 = [1,2,2,1], nums2 = [2,2]
#   Output: [2,2]

# Example 2:
#   Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
#   Output: [4,9]
#   Explanation: [9,4] is also accepted.

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  h1 = nums1.tally
  h2 = nums2.tally
  common_values = h1.keys & h2.keys

  common_values.inject([]) do |acc, val|
    # 64 7
    repetitions = [h1[val], h2[val]].min
    repetitions.times { acc << val }
    acc
  end
end

nums1 = [4,9,5]
nums2 = [9,4,9,8,4]
puts intersect(nums1, nums2).inspect
