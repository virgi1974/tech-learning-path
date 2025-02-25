# Given a string s, reverse only all the vowels in the string and return it.

# The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

# Example 1:

# Input: s= "hello"
# Output: "holle"
# Example 2:

# Input: s= "AEIOU"
# Output: "UOIEA"
# Example 3:

# Input: s= "DesignGUrus"
# Output: "DusUgnGires"

def reverse_vowels(string)
  left_index = 0
  right_index = string.size - 1

  while left_index <= right_index
    # both vowels
    if string[left_index].match?(/[aeiouAEIOU]/) && string[right_index].match?(/[aeiouAEIOU]/)
      # 1. change positions
      tmp_left = string[left_index]
      string[left_index] = string[right_index]
      string[right_index] = tmp_left

      # 2. move both indexes
      # left_index ->
      left_index += 1
      # <- right_index
      right_index -= 1

    # only left vowel
    elsif string[left_index].match?(/[aeiouAEIOU]/)
      # <- right_index
      right_index -= 1

    # only right vowel
    elsif string[right_index].match?(/[aeiouAEIOU]/)
      # left_index ->
      left_index += 1
    else
      # 2. move both indexes
      # left_index ->
      left_index += 1
      # <- right_index
      right_index -= 1
    end
  end
  string
end
