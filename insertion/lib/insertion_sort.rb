class InsertionSort

  def sort(to_sort)
    size = to_sort.length
    position = 0
    while position < size
      current = to_sort[position]
      inserter = position
      while inserter > 0 && to_sort[inserter - 1] > current
        to_sort[inserter] = to_sort[inserter - 1]
        inserter -= 1
      end
      to_sort[inserter] = current
      position += 1
    end
    return to_sort
  end
end
