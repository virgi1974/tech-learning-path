from typing import List

class Solution:
    def arrayPairSum(self, nums: List[int]) -> int:
        """
        Find the max sum of min pairs in an array.

        The function takes in an array of 2n integers and we need to pair them up
        in such a way to minimize the difference between the pairs. The sum we want
        to maximize is the sum of the smaller number in each pair.

        :param nums: List[int] - Array of 2n integers
        :return: int - Maximum sum of min pairs
        """

        # Sort the array in non-decreasing order
        sorted_nums = sorted(nums)

        # Take every other element starting from the first element
        # because after sorting, the first element of each pair
        # will be the smaller one
        min_pairs_sum = sum(sorted_nums[::2])

        return min_pairs_sum

# Example usage:
# sol = Solution()
# print(sol.arrayPairSum([1,4,3,2]))  # Output: 4


Time Complexity:
The time complexity is primarily determined by the sorting function.
Python uses Timsort for sorting, which has a time complexity of O(n log n) for an average and worst-case scenario,
where n is the length of the nums array.

There is also the summation operation, which iterates over every other element of the sorted array,
contributing an additional O(n/2), which simplifies to O(n) time.
However, since O(n log n) dominates O(n), the overall time complexity is O(n log n).

Space Complexity:
The space complexity of the sorting operation depends on the implementation.
For Timsort, the worst-case space complexity is O(n), because it might need temporary space to hold elements while merging.
Timsort is a hybrid sorting algorithm that requires temporary storage for the merge operations.

However, since the input array itself is sorted in-place and the result is computed using that without requiring extra space,
other than what is needed for the sorted array and the sum variable, the space complexity may be considered O(1) or constant
if the space used by the sorting algorithm is not taken into account, which is typically the case for space complexity analysis
in Python where sorting is considered to be in-place.

In summary:

Time Complexity: O(n log n)
Space Complexity: O(1) (disregarding the space used by the sorting algorithm)