def max_sum_subarray(arr, n)
  return nil if arr.length < n

  # Calcular la suma del primer subarray de tamaño n
  max_sum = arr[0, n].sum
  current_sum = max_sum
  max_start_index = 0  # Índice de inicio del subarray con la suma máxima

  # Deslizar la ventana a través del array
  (n...arr.length).each do |i|
    # Restar el primer elemento de la ventana anterior y sumar el nuevo elemento
    previous_element_on_the_left = arr[i - n]
    new_element_on_the_right = arr[i]

    current_sum = current_sum - previous_element_on_the_left + new_element_on_the_right
    # Actualizar la suma máxima y el índice de inicio si la suma actual es mayor
    if current_sum > max_sum
      max_sum = current_sum

      max_start_index = i - n + 1
    end
  end

  # Devolver el subarray con la suma máxima
  arr[max_start_index, n]
end
