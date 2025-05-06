class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  # Insert at the end
  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next while current.next
      current.next = new_node
    end
  end

  # Insert at the beginning
  def prepend(value)
    new_node = Node.new(value)
    new_node.next = @head
    @head = new_node
  end

  # Delete a node by value
  def delete(value)
    return if @head.nil?

    if @head.value == value
      @head = @head.next
      return
    end

    current = @head
    while current.next && current.next.value != value
      current = current.next
    end

    current.next = current.next.next if current.next
  end

  # Search for a value
  def search(value)
    current = @head
    while current
      return true if current.value == value
      current = current.next
    end
    false
  end

  # Print the linked list
  def display
    current = @head
    while current
      print "#{current.value} -> "
      current = current.next
    end
    puts "nil"
  end
end

# Example usage
list = LinkedList.new
list.append(10)
list.append(20)
list.append(30)
list.prepend(5)
list.display # Output: 5 -> 10 -> 20 -> 30 -> nil
list.delete(20)
list.display # Output: 5 -> 10 -> 30 -> nil
puts list.search(10) # Output: true
puts list.search(50) # Output: false
