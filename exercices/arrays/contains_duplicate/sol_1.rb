def contains_duplicate(nums)
   dictionary = {}

   nums.each do |num|
    return true if dictionary[num]

    dictionary[num] = true
   end

   false
end
