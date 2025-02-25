# Given a string sentence containing English letters (lower- or upper-case), return true if sentence is a Pangram, or false otherwise.

# A Pangram is a sentence where every letter of the English alphabet appears at least once.

# Note: The given sentence might contain other characters like digits or spaces, your solution should handle these too.

# Example 1:

# Input: sentence = "TheQuickBrownFoxJumpsOverTheLazyDog"
# Output: true
# Explanation: The sentence contains at least one occurrence of every letter of the English alphabet either in lower or upper case.
# Example 2:

# Input: sentence = "This is not a pangram"
# Output: false
# Explanation: The sentence doesn't contain at least one occurrence of every letter of the English alphabet.

def check_if_pangram(sentence)
  dictionary = {}
  expected_size = Range.new("a","z").to_a.size

  sentence.each_char do |letter|
    if letter.match?(/[a-zA-Z]/) && dictionary.key?(letter) == false
      dictionary[letter.downcase] = true
    end
  end

  dictionary.keys.size == expected_size
end

# Time Complexity: O(n), where n is the length of the input string.
# Space Complexity:  O(1)(constant space, independent of input string length).
