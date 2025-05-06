require "pry"

def square_root(n)
  return n if n == 0 || n == 1

  left = 1
  right = n
  result = -1

  while left <= right
    middle = (right + left) / 2

    if feasible(middle, n)
      result = middle
      right = middle - 1
    else
      left = middle + 1
    end
  end
  result - 1
end

def feasible(val, target)
  val * val > target
end


# n = 9
# [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# [F, F, F, T, T, T, T, T, T, T]
# -------------|
puts(square_root(9))

# n = 6
# [0, 1, 2, 3, 4, 5, 6]
# [F, F, F, T, T, T, T]
# ----------|
# -------|
puts(square_root(6))

# n = 15
# [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
# [F, F, F, F, T, T, T, T, T, T, T, T, T, T, T, T, T, T]
# -------------------------|
# [F, F, F, F, T, T, T, T, T]
puts(square_root(15))
puts(square_root(1))
