class Array
	def linear_search(target)
		0.upto(size - 1) do |index|
			if self[index] == target
				return index
			end
		end
		"- Not found -"
	end
end

array = [1,3,2,5,2]
searched_element = 4
index_for_element = array.linear_search(searched_element)
p "element #{searched_element} is found in index #{index_for_element}"