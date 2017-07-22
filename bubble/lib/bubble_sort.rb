class BubbleSort

  def sorted(array)
    array.each_index do |first|
      second_array(array, first)
    end
  end

  def second_array(array,first)
    array.each_index do |second|
      comparison(array,first,second)
    end
  end

  def comparison(array,first,second)
    if array[first] < array[second]
      array[first],array[second] = array[second],array[first]
    end
  end

end
