class BubbleSort

  def compare_values(previous, current, array)
    if array[current] < array[previous]
      array[previous], array[current] = array[current], array[previous]
    end
    array
  end

  def bubble_sort(previous, current, length, array)
    until current == length
      compare_values(previous, current, array)
      current += 1
      previous += 1
    end
  end

  def single_sort(array)
    length = array.length
    bubble_sort(0, 1, length, array)
    array
  end

  def multi_sort(array, length)
    length.times do
      single_sort(array)
    end
  end

  def sort(array)
    length = array.length
    multi_sort(array, length)
    array
  end
end
