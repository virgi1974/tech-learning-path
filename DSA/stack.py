Stack (is a list) LIFO (Last In First Out)
- push: append # O(1)
- pop: pop # O(1)
- size: len(l) # O(1)
- top: l[-1] # O(1)

each method call pushes a new frame onto the stack
def a():
  b()

def b():
  c()

def c():
  pass

| **Step** | **Call Stack** | **Action**                        | **Push** | **Popped**  |
|----------|----------------|-----------------------------------|----------|-------------|
| **1**    | `[a]`          | `a()` is called.                  | `a()`    |             |
| **2**    | `[a, b]`       | `b()` is called inside `a()`.     | `b()`    |             |
| **3**    | `[a, b, c]`    | `c()` is called inside `b()`.     | `c()`    |             |
| **4**    | `[a, b]`       | `c()` finishes, and it's popped.  |          | `c()`       |
| **5**    | `[a]`          | `b()` finishes, and it's popped.  |          | `b()`       |
| **6**    | `[]`           | `a()` finishes, and it's popped.  |          | `a()`       |

2 types of errors can happen:
  underflow error -> doing pop on an empty stack
  overflow error -> doing push on a full stack

A computer's internal stack is called "call stack",
and the data it pushes onto a call stack are called "stack frames".
stack frames on a call stack represent the function you are calling and its arguments.


# it can be implemented using a list
# we just need the ability to append and pop elements from the end of the list
  # push → O(1)
  # pop → O(1)
  # peek → O(1)
  # empty? → O(1)
  # size → O(1)
class Stack:
    def __init__(self):
        self.stack = []

    def push(self, item):
        self.stack.append(item)

    def pop(self):
        if not self.is_empty():
            return self.stack.pop()
        return None  # Handle empty stack case

    def peek(self):
        return self.stack[-1] if not self.is_empty() else None

    def is_empty(self):
        return len(self.stack) == 0

    def size(self):
        return len(self.stack)

# Example Usage:
stack = Stack()
stack.push(1)
stack.push(2)
stack.push(3)

print(stack.pop())    # => 3
print(stack.peek())   # => 2
print(stack.size())   # => 2
print(stack.is_empty()) # => False
