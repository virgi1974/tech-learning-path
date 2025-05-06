def find_first_element_with_duplicates(arr, target)
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
  value == target
end

arr = [1, 3, 3, 3, 3, 6, 10, 10, 10, 100]
target = 3
# Output: 1
res = find_first_element_with_duplicates(arr, target)
puts (res == 1)

arr = [2,3,5,7,11]
target = 2
# Output: 0
res = find_first_element_with_duplicates(arr, target)
puts (res == 0)

arr = [2, 3, 5, 7, 11, 13, 17, 19]
target = 6
# Output: -1
res = find_first_element_with_duplicates(arr, target)
puts (res == -1)
