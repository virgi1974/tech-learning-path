# Input: arr = [1,3,4,4,7,9] target 4
# Output: 2

# Input: arr = [1,3,4,4,7,9] target 7
# Output: 4

def first_occurrence(arr, target)
  left = 0
  right = arr.length - 1
  boundary_index = -1
  while left <= right
    mid = (left + right) / 2
    if feasible(arr[mid], target)
      boundary_index = mid
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
