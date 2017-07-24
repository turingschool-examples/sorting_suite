class InsertionSort

  def sort(array)
    size = array.length
    i = 0
    while i < size
      current = array[i]
      j = i
      while j > 0 && array[j - 1] > current
        array[j] = array[j - 1]
        j -= 1
      end
      array[j] = current
      i += 1
    end
    return array
  end



end
