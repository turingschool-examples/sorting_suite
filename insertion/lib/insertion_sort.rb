class InsertionSort

  def sorter(array)
    (1...array.length).each do |index|
      while index > 0
        if array[index-1] > array[index]
          temp = array[index]
          array[index] = array[index-1]
          array[index-1] = temp
        end
        index -= 1
      end
    end
    return array
  end

end
