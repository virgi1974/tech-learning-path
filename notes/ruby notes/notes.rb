# ITERATING OVER AN ARRAY IN REVERSE ORDER
#.reverse_each

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

# ITERATE AN ARRAY FROM THE SECOND ELEMENT
1.upto(array_size - 1) do |current_index|
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

# XOR operator - find unique element in an array
  1 ^ 1 => 0
  1 ^ 0 => 1
  0 ^ 1 => 1
  0 ^ 0 => 0

  [4,1,2,1,2]
  4 ^ 1 => 5
  5 ^ 2 => 7
  7 ^ 1 => 6
  6 ^ 2 => 4 #!!!! at the end we get the single number

# TALLY METHOD - to count repetitions of elements in an array
  [1,2,3,1].tally
=> {1=>2, 2=>1, 3=>1}


[1,2,3,4,5,6].each_slice(2) do |slice|
  p slice
end
# [1,2]
# [3,4]
# [5,6]
