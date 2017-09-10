class BubbleSort

  def compare_values(previous, current, array)
    if array[current].ord < array[previous].ord
      array[previous], array[current] = array[current], array[previous]
    end
    array
  end

  def single_sort(array)
    length = array.length
    previous = 0
    current = 1
    until current == length
      compare_values(previous, current, array)
      current += 1
      previous += 1
    end
    array
  end

  def sort(array)
    length = array.length
    puts length
    length.times do
      single_sort(array)
    end
    array
  end

end
