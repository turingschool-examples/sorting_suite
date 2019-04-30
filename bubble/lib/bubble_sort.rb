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
  end
end
