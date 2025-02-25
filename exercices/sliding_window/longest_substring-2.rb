# Given a string s, find the length of the longest substring without repeating characters

def length_of_longest_substring(s)
  return 0 if s.empty?

  # "abca"
  # "a" => {a: 0}
  # "b" => {a: 0, b: 1}
  # "c" => {a: 0, b: 1, c: 2}
  # "a" => {a: 3, b: 1, c: 2}
  char_index_map = {}
  # sliding window left and right indexes
  start_index = 0
  max_length = 0

  s.chars.each_with_index do |char, end_index|
    if char_index_map.key?(char) && char_index_map[char] >= start_index
      start_index = char_index_map[char] + 1
    end

    char_index_map[char] = end_index
    max_length = [max_length, end_index - start_index + 1].max
  end

  max_length
end
