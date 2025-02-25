def contains_duplicate(nums)
  nums.size != Set.new(nums).size
end
