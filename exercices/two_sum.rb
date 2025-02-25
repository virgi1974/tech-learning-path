# Input: nums = [2, 7, 11, 15], target = 9
# Output: [0, 1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

def find_sequence(array, target)
  data = {}
  array.each_with_index do |num, index|
    # if target 9 and num 2, 7 is the difference
    difference = target - num

    if data[difference]
        return [data[difference], index]
    else
      data[num] = index
    end
  end
end

# Efficiency:
# Time Complexity: O(n), where n is the number of elements in the array. The algorithm makes a single pass through the array, and each lookup and insertion in the hash table (data) takes average constant time.

# Space Complexity: O(n), due to the hash table (data) storing up to n key-value pairs in the worst case.


# Algorithm
# the use of hash tables (or dictionaries) for efficient lookups
