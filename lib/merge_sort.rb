module MergeSort
  def merge_sort(array, left = [], right = [])
    if array.length <= 1
      return array
    else
      array.each_with_index do |element, index|
        if index < (array.length/2)
          left << element
        else
          right << element
        end
      end
      left = merge_sort(left)
      right = merge_sort(right)
      merge(left, right)
    end
  end

  def merge(left, right)
    result = []
    while left[0] != nil && right[0] != nil
      if left[0] < right[0]
        result << left.shift
      else
        result << right.shift
      end
    end

    while left[0] != nil
      result << left.shift
    end
    while right[0] != nil
      result << right.shift
    end
    result
  end
end
