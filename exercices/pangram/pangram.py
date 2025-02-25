class Solution:
    def checkIfPangram(self, sentence):
        dictionary = {}
        expected_size = len(list(range(ord("a"), ord("z") + 1)))

        for letter in sentence:
            if letter.isalpha() and letter.lower() not in dictionary:
                dictionary[letter.lower()] = True

        return len(dictionary) == expected_size
