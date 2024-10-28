# Input: nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# Output: 6
# Explanation: The contiguous subarray [4, -1, 2, 1] has the largest sum = 6.


# maximum_subarray
def maximum_subarray(array)
  return array[0] if array.length == 1

  current_sum = global_sum = array[0] # Initialize to the first element

  array[1..-1].each do |num|
    current_sum = [num, num + current_sum].max
    global_sum = [global_sum, current_sum].max
  end

  global_sum
end


# Algorithm
# Kadane's Algorithm



Let’s say somehow I know the local_maximum[4]. Then we see that to calculate the local_maximum[5],
we don’t need to compute the sum of all subarrays ending with A[5] since we already know the result from arrays ending with A[4].
Note that if array [4, -1] had the maximum sum, then we only need to check the arrays highlighted with the red arrows to calculate local_maximum[5].
And this leads us to the principle on which Kadane’s Algorithm works.


https://medium.com/@rsinghal757/kadanes-algorithm-dynamic-programming-how-and-why-does-it-work-3fd8849ed73d
