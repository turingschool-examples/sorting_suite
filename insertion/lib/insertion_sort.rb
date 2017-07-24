class InsertionSort

  def sort(array)
    1.upto(array.length - 1) do |element|
      number = array[element]
      element_2 = element - 1
      while element_2 >= 0 && array[element_2] > number
        array[element_2 + 1] = array[element_2]
        element_2 -= 1
      end
      array[element_2 + 1] = number
    end
    array
  end

end
