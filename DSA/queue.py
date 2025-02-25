#
# Queue FIFO (First In First Out) data structure.
#  Used frequently in Breadth-First Search (BFS)
from collections import deque
q = deque() # work as a queue and as a dqueue

enqueue: q.append # O(1)
dequeue: q.popleft() # O(1). Note that it's pop*left*. pop is also supported but it's for getting element at the end of the double-ended queue.
peek: q[0] # O(1). Accesses the first element of the queue just like an array.
size: len(q) # O(1)