# A stack only needs the ability to add and remove the last one
# it can be implemented with an array
  # push → O(1)
  # pop → O(1)
  # peek → O(1)
  # empty? → O(1)
  # size → O(1)
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

# Example Usage:
stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)

puts stack.pop    # => 3
puts stack.peek   # => 2
puts stack.size   # => 2
puts stack.empty? # => false


def execute(program)
  # Initialize the stack
  stack = []

  program.each do |instruction|
    case instruction
    when "peek"
      # Print the top item in the stack
      puts stack.last
    when "pop"
      # Pop the top item from the stack
      stack.pop
    else
      # Extract the data from the "push" instruction
      data = instruction[5..].to_i
      stack << data
    end
  end

  stack
end

if $PROGRAM_NAME == __FILE__
  program = Array.new(gets.to_i) { gets.chomp }
  res = execute(program)
  puts res.join(" ")
end
