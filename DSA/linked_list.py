# Big O
# append to end is O(N).
# finding an element is O(N)

# linked list
class LinkedListNode:
    def __init__(self, val, next=None):
      self.val = val
      self.next = next

    def __str__(self):
      return f"[{self.val}] -> {self.next}"

# Create nodes: 1->2->3->4->None
node4 = LinkedListNode(4)
node3 = LinkedListNode(3, node4)
node2 = LinkedListNode(2, node3)
head = LinkedListNode(1, node2)

# Alternative one-liner creation
# head = LinkedListNode(1, LinkedListNode(2, LinkedListNode(3, LinkedListNode(4))))

# Print list
print(head)
# [1] -> [2] -> [3] -> [4] -> None
#  ^
# head

# Traverse list
current = head
while current:
    print(current.val, end=" ")  # 1 2 3 4
    current = current.next

# Find node with value x
def find_node(head, x):
    current = head
    while current:
        if current.val == x:
            return current
        current = current.next
    return None

def append_to_end(head, x):
    new_node = LinkedListNode(x)
    current = head
    while current.next:
        current = current.next
    current.next = new_node
    return head
