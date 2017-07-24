require 'pry'

class BubbleSort

  def sort(array)
    length = array.length
    until array[index] = length - 1
      array.map_with_index do |n, index|
      until n > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        end
      end
    end
    array
  end

end
