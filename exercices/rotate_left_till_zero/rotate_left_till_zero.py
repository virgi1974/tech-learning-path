from collections import deque
from typing import List, Deque

# @nums: List of integers with a single zero
# we need to rotate the list to the left until the zero is at the beginning of the list
def rotate_left_till_zero(nums: List[int]) -> List[int]:
  queue = deque(nums)
  while queue[0] != 0:
    last_value = queue.popleft()
    queue.append(last_value)

  return queue

print("----")
print([1, 2, 0, 3])
print(rotate_left_till_zero([1, 2, 0, 3]))
print("----")
print([7, 6, 4, 2, 8, 0])
print(rotate_left_till_zero([7, 6, 4, 2, 8, 0]))
print("----")
print([0, 3, 4, 6, 3])
print(rotate_left_till_zero([0, 3, 4, 6, 3]))
