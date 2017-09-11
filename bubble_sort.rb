class BubbleSort


  def sort(array)
    n = array.length - 1
    loop do
      swapped = false
      n.times do |x|
        if array[x] > array[x + 1]
          array[x], array[x + 1] = array[x + 1], array[x]
          swapped = true
        end
      end
      break if swapped != true
    end
    array
  end

end
