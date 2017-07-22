class Bubble

  def sorter(array)
    previous = array[0]
    array.each_with_index do |num, index|
      if index == 0
        next
      elsif num < previous
        swap(array, index)
      else
        previous = array[index]
      end
    end
  end

  def swap(array, index)
    new_index = index - 1
    array[index], array[new_index] = array[new_index], array[index]
    previous = array[index]
    previous
  end

end
