class MergeSort

  def sort(array)
    return array if array.length <= 1
    middle = array.length / 2
    left = sort(array[0...middle])
    right = sort(array[middle..-1])
    merge(left, right)
  end

  def merge(left, right)
    result = []
    until left.empty? || right.empty?
      result << (left.first <= right.first ? left.shift : right.shift)
    end
    result + left + right
  end


end
