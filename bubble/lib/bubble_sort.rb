require 'pry'

class BubbleSort

  def sort(array)
    finished = true
    while finished = false
      (array.length - 1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          finished = true
        end
      end
    end
    array
  end

end
