class BubbleSort

  def sort(given_array)
    loop do
      @swapped = false
      swap_indices(given_array)
      break if @swapped == false
    end
    given_array
  end

  def swap_indices(given_array)
    (given_array.length - 1).times do |index|
      if given_array[index] > given_array[index + 1]
        given_array[index], given_array[index + 1] = given_array[index + 1], given_array[index]
        @swapped = true
      end
    end
  end
end
