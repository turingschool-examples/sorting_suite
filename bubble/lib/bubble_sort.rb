class BubbleSort

  def sort(array)
    n = array.length
    loop do
      sorted = false
      (n-1).times do |index|
        if array[index] > array[index + 1]
          array[index], array[index + 1] = array[index + 1], array[index]
          sorted = true
        end
      end
      break if !sorted
    end
    array
  end


end
