module BubbleSort
  def bubble_sort(array)
    (array.length - 1).times { bubble(array) }
    array
  end

  def bubble(array, index = 0)
    if index < array.length - 1 && array[index] > array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
      index += 1
      bubble(array, index)
    elsif index < array.length - 1 && array[index] < array[index + 1]
      index += 1
      bubble(array, index)
    else
      return array
    end
  end
end
