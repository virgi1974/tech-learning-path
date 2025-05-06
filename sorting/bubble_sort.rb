def bubble_sort(arr)
  n = arr.length
  swapped = true

  # Outer loop: controls the number of passes
  while swapped
    swapped = false
    # Inner loop: compares adjacent elements and swaps if necessary
    (n-1).times do |i|
      if arr[i] > arr[i+1]
        # Swap elements
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    # After each pass, the largest unsorted element is in place
    # so we can shorten in one the length we iterate over
    n -= 1
  end

  arr
end

# Example usage:
unsorted_array = [5, 3, 8, 4, 6]
sorted_array = bubble_sort(unsorted_array)
puts "Sorted Array: #{sorted_array}"
