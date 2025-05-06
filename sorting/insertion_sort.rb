def insertion_sort(unsorted_list)
  unsorted_list.size.times do |index|
    current = index

    while current > 0 && unsorted_list[current] < unsorted_list[current - 1]
      # swap positions
      tmp = unsorted_list[current - 1]
      unsorted_list[current - 1] = unsorted_list[current]
      unsorted_list[current] = tmp
      # decrease current
      current -= 1
    end
  end
end

# [5,3,1,2,6]
# current = 0
# current = 1
#   {5,3}->{3,5} [3,5,1,2,6] current 1-1->0
# current = 2
#   [3,5,1,2,6]
#   {5,1}->{1,5} [3,1,5,2,6] current 2-1->1
#   [3,1,5,2,6]
#   {3,1}->{1,3} [1,3,5,2,6] current 1-1->0
# current = 3
#   [1,3,5,2,6]
#   {5,2}->{2,5} [1,3,2,5,6] current 3-1->2
#   [1,3,2,5,6]
#   {3,2}->{2,3} [1,2,3,5,6] current 2-1->1
#   [1,2,3,5,6]
#   {1,2}
# current = 4
