class InsertionSort

  def sort(unsorted)
    sorted = []
    until unsorted.empty?
      insert(unsorted.pop, sorted)
    end
    sorted
  end

  def insert(entry, sorted)
    point = find_point(entry, sorted)
    return sorted << entry if point.nil?

    insertion_point = sorted.index(point)
    sorted.insert(insertion_point, entry)
  end

  def find_point(entry, sorted)
    sorted.find { |element| entry < element }
  end

end
