# FIND THE FIRST NUMBER BIGGER THAN x NOT PRESENT IN THE ARRAY
values = [6,8]
val = values[0  ]

while values.include?(val)
  val += 1
end
# val is now 7


# FIND THE FIRST NUMBER BIGGER THAN x NOT PRESENT IN THE ARRAY
values = [4,5,8]
val = values[0]

while values.include?(val)
  val += 1
end
# val is now 6
