def palindrome?(number)
  return false if number < 0
  str = number.to_s
  str == str.reverse
end
