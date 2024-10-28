# FIND THE FIRST NUMBER BIGGER THAN x NOT PRESENT IN THE ARRAY
set = [6,8].to_a
val = 6

while set.include?(val)
  val += 1
end
# val is now 7


# FIND THE FIRST NUMBER BIGGER THAN x NOT PRESENT IN THE ARRAY
set = [4,5,8].to_a
val = 6

while set.include?(val)
  val += 1
end
# val is now 6
