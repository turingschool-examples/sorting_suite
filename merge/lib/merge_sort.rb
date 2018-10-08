class MergeSort
  def merge_sort(list)
    if list.length <= 1
      list
    else
      mid = (list.length / 2).floor
      left = merge_sort(list[0..mid -1])
      right = merge_sort(list[mid..list.length])
      merge(left, right)
    end
  end

  def merge(left, right)
    final = []
    until left.length == 0 || right.length == 0
      if left.first <= right.first
        final << left.shift
      else
        final << right.shift
      end
    end
    final.concat(left).concat(right)
  end
end

merge = MergeSort.new
list = (["d", "b", "a", "c"])
merge.merge_sort(list)
