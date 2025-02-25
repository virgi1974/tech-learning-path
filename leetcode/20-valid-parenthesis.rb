class Stack
  def initialize
    @stack = []
  end

  def push(item)
    @stack.push(item)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def empty?
    @stack.empty?
  end

  def size
    @stack.size
  end
end

OPEN_VALUES = ["[","{", "("]
PAIRS = ["[]", "{}", "()"]

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = Stack.new

  s.chars.each do |char|
    if OPEN_VALUES.include?(char)
      stack.push(char)
    else
      return false if stack.empty?
      if PAIRS.include?(stack.pop << char)
        next
      else
        return false
      end
    end
  end

  stack.empty?
end
