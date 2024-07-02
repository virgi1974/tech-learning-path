# SLIDING WINDOW algorithm
def longest_substring(s)
  return "" if s.empty?

  max_length = 0          # Longitud máxima de subcadena encontrada
  start_index = 0         # Índice de inicio de la ventana
  char_index_map = {}     # Hash para almacenar el índice de la última aparición de cada carácter
  longest_substring = ""  # La subcadena más larga encontrada

  s.chars.each_with_index do |char, end_index|
    if char_index_map.key?(char) && char_index_map[char] >= start_index
      start_index = char_index_map[char] + 1
    end

    char_index_map[char] = end_index
    current_length = end_index - start_index + 1

    if current_length > max_length
      max_length = current_length
      longest_substring = s[start_index..end_index]  # Actualiza la subcadena más larga
    end
  end

  longest_substring
end
