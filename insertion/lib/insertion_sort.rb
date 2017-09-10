class InsertionSort

  def sort(array)
    size = array.length
    position = 0
    while position < size
      current = array[position]
      inserter = position
      while inserter > 0 && array[inserter - 1] > current
        array[inserter] = array[inserter - 1]
        inserter -= 1
      end
      array[inserter] = current
      position += 1
    end
    return array
  end
end
