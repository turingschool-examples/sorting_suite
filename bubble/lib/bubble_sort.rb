class BubbleSort

  def sorted(array)
    array.each_index {|first| second_array(array, first)}
  end

  def second_array(array,first)
    array.each_index {|second| comparison(array,first,second)}
  end

  def comparison(array,first,second)
    if array[first] < array[second]
      array[first],array[second] = array[second],array[first]
    end
  end

end
