class InsertionSort

  def sort(data)
    array_length = data.length
    1.upto(array_length - 1) do |index|
      while (index > 0) && (data[index - 1] > data[index])
          swap(data, index, index - 1)
          index -= 1
      end
    end
    data
  end

  def swap(array, index1, index2)
    array[index1], array[index2] = array[index2], array[index1]
  end

end
