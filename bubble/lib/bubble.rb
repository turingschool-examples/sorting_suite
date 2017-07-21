class Bubble
  def bubble_sort(array)
    loop do
      swap = false
      (array.length - 1).times do |index|
        if array[index] > array[index + 1]
          array[index + 1], array[index] = array[index], array[index + 1]
          swap = true
        end
      end
      if swap == false
        break
      end
    end
    array
  end
end