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

class Solution:
  def isValid(self, s: str) -> bool:
    # Initialize an empty list to use as a stack
    stack = Stack()
    # Create a set with valid parentheses pairs
    valid_pairs = {'()', '[]', '{}'}

    # Iterate over each character in the string
    for char in s:
      # If the character is an opening parenthesis, push it onto the stack
      if char in '({[':
        stack.push(char)
      # If the stack is empty or the formed pair is not valid, return False
      elif not stack or stack.pop() + char not in valid_pairs:
        return False

    # If the stack is empty, all parentheses were valid and correctly nested
    return stack.is_empty()