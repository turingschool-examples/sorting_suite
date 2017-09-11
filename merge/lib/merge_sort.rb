class MergeSort

  def merge_sort(to_sort)
    return to_sort if to_sort.size <= 1

    center = to_sort.length / 2
    left = to_sort[0, center]
    right = to_sort[center, to_sort.length]

    merge(merge_sort(left), merge_sort(right))
  end

  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left[0] <= right[0]
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted + left + right
  end

end
