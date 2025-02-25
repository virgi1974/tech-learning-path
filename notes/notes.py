# iterating all elements of a list
nums = [0, 10, 20, 30, 40, 50]
for i, num in enumerate(nums):
    print(i, num)

# inf & -inf numbers
import math

positive_inf = math.inf
negative_inf = -math.inf

# [begin:stop:step]
[1,2,3,4,5,6][::2]  # [1, 3, 5]

sorted([3,1,2]) # [1, 2, 3]
sum([1,2,3]) # 6

