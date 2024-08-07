# ITERATING OVER AN ARRAY IN REVERSE ORDER

nums = [1, 2, 3, 4, 5]

(nums.size - 1).downto(0) do |i|
  puts nums[i]
end

# SIMPLIFYING THE ITERATIONS OVER AN ARRAY
If we are rotating an array of size 7 by 9 positions,
we can simplify the number of rotations by using the modulo operator

if k > size
  k = k % size
end

# shifth & unshift
they can easily lead to O(n^2) time complexity if used in a loop
because they shift all elements to the right or left by one position
They could be ok when used with small arrays or when used once in a while
but if you need to use them in a loop, it is better to use a different data structure
like a linked list or a deque

# ruby methods using an in-place algorithm
[1,2,3,4].rotate!(-k)
[1,2,3,4].reverse!
