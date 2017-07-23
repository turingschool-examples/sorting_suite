class BubbleSort

  def sort(array, index = 0)
    a = array.length

    loop do
      swapped = false

      (a-1).times do |index|
        if array[index] > array[index + 1]
          array[index], array[index + 1] = array[index + 1], array[index]
          swapped = true
        end
      end
      break if not swapped
    end
    array
    # if index == array.length - 1
    #   array
    # elsif array[index] > array[index + 1]
    #   array[index], array[index + 1] = array[index + 1], array[index]
    #   index +=1
    #   sort(array, index)
    # end
  end
end
