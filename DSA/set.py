s = set()

is a in set s:
  a in s # O(1) True or False
adding a to set:
  s.add(a) # O(1) Duplicates will be discarded.
removing a from set:
  s.discard(a) # O(1). Does nothing if a is not in the set.

Hash set is useful when you only need to know existence of a key.
Example use cases include DFS and BFS on graphs.