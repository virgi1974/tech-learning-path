# VERSION 1
def prime?(number)
  return false if number <= 1  # 1 and numbers less than 1 are not prime
  return true if number == 2   # 2 is the only even prime number
  return false if number.even? # Any other even number is not prime

  # Check only odd numbers from 3 to the square root of the number
  (3..Math.sqrt(number)).step(2).each do |i|
    return false if number % i == 0 # If number is divisible by i, it's not prime
  end

  true # If no divisors are found, the number is prime
end

# VERSION 2
def prime?(number)
  return false if number <= 1
  return true if number == 2
  return false if number.even?

  (3..Math.sqrt(number)).step(2).each do |i|
    return false if number % i == 0
  end

  true
end

puts prime?(2)    # Outputs: true
puts prime?(3)    # Outputs: true
puts prime?(4)    # Outputs: false
puts prime?(17)   # Outputs: true
puts prime?(18)   # Outputs: false
puts prime?(19)   # Outputs: true
