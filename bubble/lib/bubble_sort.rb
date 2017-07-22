class BubbleSort

  def sort(array)
    array.each_index do |first|
      array.each_index do |second|
        if array[first] < array[second]
          array[first],array[second] = array[second],array[first]
        end
      end
    end
  end

end
