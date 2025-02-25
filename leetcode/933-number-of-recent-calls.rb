class RecentCounter
  def initialize()
    @queue = Queue.new
  end

  def ping(t)
    # 1 - append new value
    @queue.append(t)

    # 2 - calculate the time range
    time_range = t - 3000

    # 3 - remove entries older than the range
    while !@queue.empty? && @queue.first_element < time_range
      @queue.remove_front
    end

    # 4 - count the remaining elements in the queus
    @queue.size
  end
end

# Your RecentCounter object will be instantiated and called as such:
# obj = RecentCounter.new()
# param_1 = obj.ping(t)

class Queue
  def initialize
    @elements = []
  end

  # Add to the back
  def append(element)
    @elements.push(element)
  end

  # Remove from the front
  def remove_front
    @elements.shift
  end

  # Check if the dequeue is empty
  def empty?
    @elements.empty?
  end

  # Get the size of the dequeue
  def size
    @elements.size
  end

  def first_element
    @elements[0]
  end
end
