# Input: arr = [false, false, true, true, true]
# Output: 2

# Input: arr = [false, true, true, true, true]
# Output: 1

def find_boundary(arr)
  left = 0
  right = arr.length - 1
  boundary_index = -1
  while left <= right
    mid = (left + right) / 2
    if arr[mid] == true
      boundary_index = mid
      right = mid - 1
    else
      left = mid + 1
    end
  end
  boundary_index
end
