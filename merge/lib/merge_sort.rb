class MergeSort

  def sort(data_set)
    if data_set.length <= 1
      data_set
    else
      middle = (data_set.length + 1) / 2
      left = sort(data_set[0..middle - 1])
      right = sort(data_set[middle..data_set.length])
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left[0] < right[0]
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
  end

end

merge = MergeSort.new

p merge.sort([0, 1, 2, 3, 4, 5, 6, 7, 8])
