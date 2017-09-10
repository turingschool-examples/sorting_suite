class MergeSort

  def sort(array)
    size = array.length
    position = 0
    sorted = []
    while position < size
      left_side = array[0..(size / 2) - 1]
      right_side = array[(size / 2)..size]
      if left_side[position] < right_side[position]
        sorted << left_side[position]
      elsif left_side[position] > right_side[position]
        sorted << right_side[position]
      else
        sorted << right_side[position]
        sorted << left_side[position]
      end
      position += 1
    end

    return array
  end

end
