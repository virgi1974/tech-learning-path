require 'pry'

def binary_search(an_array, item)
	first = 0
	last = an_array.size - 1

	while first <= last
		i = (first + last) / 2

		if an_array[i] == item
			return "#{item} found at position #{i}"
		elsif an_array[i] > item
			last = i -1
		else
			first = i + 1
		end
	end

	return "item NOT found !!!"
end

# def binary_search(target, nums)
# 	floor_index = -1
# 	ceiling_index = nums.length

# 	while floor_index + 1 < ceiling_index
# 		distance = ceiling_index - floor_index
# 		half_distance = distance / 2

# 		guess_index = floor_index + half_distance
# 		guess_value = nums[guess_index]

# 		if guess_value ==target
# 			return true
# 		elsif guess_value > target
# 			ceiling_index = guess_index
# 		else
# 			floor_index = guess_index
# 		end
# 	end

# 	false
# end

array = [21, 34, 2,56, 3, 7, 1, 89, 6, 9, 65].shuffle.sort
p "array -> #{array}"

searched_value = 14#rand(0..20)
p "searched value is #{searched_value}"

# result = array.binary_search_recursive(searched_value)
# result = binary_search(searched_value, array)
result = binary_search(array, searched_value)

p "value #{searched_value} - #{result}"

