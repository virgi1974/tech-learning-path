def find_boundary(arr)
  left = 0
  right = arr.length - 1
  boundary_index = -1

  while left <= right
    mid = (left + right) / 2
    # puts "left: #{left} - right: #{right} - mid: #{mid}"
    # p arr[left..right]
    # puts "arr[mid]: #{arr[mid]} - arr[-1]: #{arr[-1]}"
    if arr[mid] < arr[-1] # belongs to lower half
      boundary_index = mid
      right = mid - 1
    else
      left = mid + 1
    end
  end
  boundary_index
end

# Input: arr = [40, 50, 60, 70, 10, 20, 30]
# Output: 4
arr = [40, 50, 60, 70, 10, 20, 30]
#     [ F,  F,  F,  T,  T, T ]
puts (find_boundary(arr))


# Input: arr = [10, 20, 30, 40, 50] -> becomes [ 30,     40,    50,   10,   20 ]
#                                              [false, false, false, true, true]
# Input: [30, 40, 50, 10, 20]
# Output: 3

# [30, 40, 50, 10, 20]
# 0 4

# middle = 2
# 50 > 30 no rotated, so we need the other subarray
# left = middle += 1 # 3
# 3 4

# [10, 20]
