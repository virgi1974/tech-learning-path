def sort_list(unsorted_list)
  n = unsorted_list.length

  (0...n).each do |i|
    min_index = i

    (i...n).each do |j|
      min_index = j if unsorted_list[j] < unsorted_list[min_index]
    end

    unsorted_list[i], unsorted_list[min_index] = unsorted_list[min_index], unsorted_list[i]
  end

  unsorted_list
end
