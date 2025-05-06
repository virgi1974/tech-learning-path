arr = [1, 3, 3, 5, 8, 8, 10]
target = 2
# arr = [F, T, T, T, T, T, T]
# Output: 1

def first_not_smaller(arr, target)
  left = 0
  right = arr.length - 1
  boundary_index = -1
  while left <= right
    mid = (left + right) / 2
    if feasible(arr[mid], target)
      boundary_index = mid
      right = mid - 1
    elsif arr[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end
  boundary_index
end

def feasible(value, target)
  value >= target
end

# arr = [2, 3, 5, 7, 11, 13, 17, 19]
# arr = [F, F, T, T, T, T, T, T, T]
# target = 6
# Output: 3

arr =   [2, 3, 5, 7, 11, 13, 17, 19]
# arr = [F, F, F, F, T,  T,  T,  T]
target = 11

res = first_not_smaller(arr, target)
puts "arr: #{arr}"
puts "target: #{target}"
puts res
