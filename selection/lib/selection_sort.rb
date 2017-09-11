class SelectionSort

  def lowest(unsorted, sorted)
    lowest = unsorted[0]
    unsorted.each.with_index do |value, i|
      if unsorted[i + 1].nil?
        nil
      elsif value < unsorted[i + 1]
        lowest = value
      end
    end
    sorted << unsorted.delete(lowest)
  end

  def check_last(sorted)
    if sorted[-1] < sorted[-2]
      sorted[-2], sorted[-1] = sorted[-1], sorted[-2]
    end
  end

  def sort(unsorted, sorted)
    until unsorted.empty?
      lowest(unsorted, sorted)
    end
  end

  def selection_sort(unsorted)
    sorted = []
    sort(unsorted, sorted)
    check_last(sorted)
    sorted
  end

end
