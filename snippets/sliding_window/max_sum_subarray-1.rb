def max_sum_subarray(arr, n)
  return nil if arr.length < n

  # Calcular la suma del primer subarray de tamaño n
  max_sum = arr[0, n].sum
  current_sum = max_sum

  # Deslizar la ventana a través del array
  (n...arr.length).each do |i|
    # Restar el primer elemento de la ventana anterior y sumar el nuevo elemento
    current_sum = current_sum - arr[i - n] + arr[i]
    # Actualizar la suma máxima si la suma actual es mayor
    max_sum = [max_sum, current_sum].max
  end

  max_sum
end
