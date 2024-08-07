def contains_duplicate(nums)
  collection = Set.new

  nums.each do |num|
    return true if collection.include?(num)
    collection.add(num)
  end

  false
end
