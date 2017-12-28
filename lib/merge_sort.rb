class MergeSort

  def sort(given_array)
    if given_array.length <= 1
      return given_array
    else
      middle = (given_array.length / 2).floor
      left = sort(given_array[0..middle - 1])
      right = sort(given_array[middle..given_array.length])
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      return right
    elsif right.empty?
      return left
    elsif left.first < right.first
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
  end
end
