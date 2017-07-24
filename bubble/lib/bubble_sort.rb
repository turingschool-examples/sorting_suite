class BubbleSort

  def sort(array)
    cycles = array.length - 1
    rotate = true
    until rotate == false
      rotate = false
      cycles.times do |element|
        if array[element] > array[element + 1]
          array[element], array[element + 1] = array[element + 1], array[element]
          rotate = true
        end
      end
    end
    array
  end

end
