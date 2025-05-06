# Input: [0, 1, 2, 3, 2, 1, 0]
# Input: [F, F, F, T, T, T, T]
# Output: 3

def peak_of_mountain_array(arr)
  left = 0
  right = arr.length - 1
  boundary_index = -1

  while left <= right
    mid = (left + right) / 2

    if arr[mid] > arr[mid + 1]
      boundary_index = mid
      right = mid - 1
    else
      left = mid + 1
    end
  end

  boundary_index
end


arr = [0, 1, 2, 3, 2, 1, 0]
puts peak_of_mountain_array(arr)

# Input: [0, 1, 2, 3, 2, 1, 0]
# Input: [F, F, F, T, T, T, T]

# boundary_index -> 3
# left = 0 right = (3 -1)
# [0, 1, 2]
# mid -> 1

# 1 > 2 false
# left = right = 2
# [2]
# return boundary_index -> 3
