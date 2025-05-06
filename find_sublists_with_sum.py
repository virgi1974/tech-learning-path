def sublist(list):
  """
  returns 2 sublists from list that have the same sum
  """

  if len(list) == 0:
    return None

  sum_l = sum(list)
  if sum_l % 2 == 1:
    # odd returns early
    return None

  target_sum = sum_l / 2
  running_sum = 0

  for i in range(len(list)):
    running_sum += list[i]
    if running_sum == target_sum:
      first_sublist = list[:i+1]
      second_sublist = list[i+1:]
      return first_sublist, second_sublist
    # elif running_sum > target_sum:
    #   return None

  return None

print(sublist([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
print(sublist([1, 3, 2, 4]))
print(sublist([]))
print(sublist([1, 2, 2, 1]))