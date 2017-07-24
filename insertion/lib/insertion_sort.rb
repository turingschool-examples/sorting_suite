class InsertionSort

  def sorter(array)
    (1...array.length).each {|index| comparison_loop(array, index)}
    array
  end

  def comparison_loop(array, index)
    while index > 0
      comparison(array, index)
      index    -= 1
    end
  end

  def comparison(array, index)
    if array[index-1] > array[index]
      temp            = array[index]
      array[index]    = array[index-1]
      array[index-1]  = temp
    end
  end

end
