class MergeSort

  def center(to_sort)
    to_sort.length / 2
  end

  def merge_sort(to_sort)
    return to_sort if to_sort.size <= 1
    left = to_sort[0, center(to_sort)]
    right = to_sort[center(to_sort), to_sort.length]
    merge(merge_sort(left), merge_sort(right))
  end

  def compare_values(sorted, left, right)
    if left[0] <= right[0]
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      compare_values(sorted, left, right)
    end
    sorted + left + right
  end

end
