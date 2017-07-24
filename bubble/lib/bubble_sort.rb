class BubbleSort

  def sort(array)
    iterations = array.length - 1
    iterations.times do |iterate|
      iterate = iterate(array)
    end
    array
  end

  def iterate (array)
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
  end

end
