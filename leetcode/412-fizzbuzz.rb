def fizz_buzz(n)
  1.upto(n).inject([]) do |acc, num|
    acc << select_fizz_buzz_case(num)
  end
end

def select_fizz_buzz_case(num)
  if num % 3 == 0 && num % 5 == 0
    "FizzBuzz"
  elsif num % 3 == 0
    "Fizz"
  elsif num % 5 == 0
    "Buzz"
  else
    num.to_s
  end
end
