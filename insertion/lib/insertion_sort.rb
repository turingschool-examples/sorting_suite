class InsertionSort

  def sort(array)
    sorted = []
    sorted << array.shift
    array.each do |num|
      if num < sorted[0]
        sorted.unshift(num)
      else
        sorted << num
        bubble(sorted)
      end
    end
    sorted
  end

  def bubble(array)
    iterations = array.length - 1
    iterations.times do 
      iterate(array)
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
