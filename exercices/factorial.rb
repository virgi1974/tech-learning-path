# ITERATIVE APPROACH
def factorial(n)
  return 1 if n == 0
  result = 1
  (1..n).each do |i|
    result *= i
  end
  result
end

# RECURSIVE APPROACH
def factorial(n)
  return 1 if n == 0
  n * factorial(n - 1)
end

# USING INJECT
def factorial(n)
  return 1 if n == 0
  (1..n).inject(:*)
end
