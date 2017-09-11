class MergeSort 

  def sort(array)
    return array if array.length <= 1 

    half  = array.length / 2
    left  = array[0...half]
    right = array[half..-1]
    divide_and_conquer(sort(left), sort(right))
  end

  def divide_and_conquer(left, right)
    finished = []
    until left.length == 0 || right.length == 0
      if left.first <= right.first
        finished << left.shift
      else 
        finished << right.shift
      end
    end
    finished.concat(left).concat(right)
  end
end