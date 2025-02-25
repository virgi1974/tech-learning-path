class Dequeue
  def initialize
    @elements = []
  end

  # Add to the front
  def add_front(element)
    @elements.unshift(element)
  end
  alias :appendleft, :add_front

  # Add to the back
  def add_back(element)
    @elements.push(element)
  end
  alias :append, :add_back

  # Remove from the front
  def remove_front
    @elements.shift
  end
  alias :popleft, :remove_front

  # Remove from the back
  def remove_back
    @elements.pop
  end
  alias :pop, :remove_back

  # Check if the dequeue is empty
  def empty?
    @elements.empty?
  end

  # Get the size of the dequeue
  def size
    @elements.size
  end

  # Peek at the front element
  def peek_front
    @elements.first
  end

  # Peek at the back element
  def peek_back
    @elements.last
  end

  # Print the dequeue
  def to_s
    @elements.to_s
  end
end

# Example usage
dequeue = Dequeue.new
dequeue.add_back(1)
dequeue.add_back(2)
dequeue.add_front(0)
puts dequeue.to_s # => [0, 1, 2]

puts dequeue.remove_front # => 0
puts dequeue.remove_back  # => 2
puts dequeue.to_s         # => [1]
