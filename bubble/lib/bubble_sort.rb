class BubbleSort

  def sort(list)
    number_of_elements = list.count

    loop do
      swapped = false

      (number_of_elements - 1).times do |index|
        if list[index] > list[index + 1]
          list[index], list[index + 1] = list[index + 1], list[index]
          swapped = true
        end
      end

      return list if swapped == false
    end

  end

end
