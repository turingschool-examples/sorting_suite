class BubbleSort

  def sort(array)

    array.length.times do |index|
      bubble_element(array, array.length-1)
    end
    # previous_index = 0
    # current_index = 1
    #
    # until current_index == array.length
    #
    #   previous = array[previous_index]
    #   current = array[current_index]
    #   if current < previous
    #     array[previous_index] = current
    #     array[current_index] = previous
    #   end
    #
    #   previous_index += 1
    #   current_index += 1
    # end
    array
  end

  def bubble_element(array, sort_length)
    previous_index = 0
    current_index = 1

    until current_index == sort_length

      previous = array[previous_index]
      current = array[current_index]
      if current < previous
        array[previous_index] = current
        array[current_index] = previous
      end

      previous_index += 1
      current_index += 1
    end
    array
  end
end
