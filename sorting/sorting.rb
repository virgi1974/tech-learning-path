def sort_list(unsorted_list)
  # WRITE YOUR BRILLIANT CODE HERE
  intial_pointer = 0
  last_pointer = 0

  unsorted_list.each_with_index do |val, index|
    initial_pointer += 1 unless initial_pointer == 0
    last_pointer += 1
    while unsorted_list[last_pointer] != nil && unsorted_list[last_pointer] < val
      unsorted_list[initial_pointer] = unsorted_list[last_pointer]
      unsorted_list[last_pointer] = val
      last_pointer += 1
      puts "unsorted list: #{unsorted_list}"
    end
  end

  unsorted_list
end

if __FILE__ == $0
  unsorted_list = gets.split.map { |v| Integer(v, 10) }
  res = sort_list(unsorted_list)
  puts(res.join(' '))
end
