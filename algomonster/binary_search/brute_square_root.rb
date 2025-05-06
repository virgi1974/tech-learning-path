def square_root(n)
  return n if n < 2

  candidate = 0
  right_limit = n / 2

  Range.new(1, right_limit).each do |val|
    square = val * val
    break if square > n

    candidate = val
  end

  candidate
end

puts(square_root(1))
