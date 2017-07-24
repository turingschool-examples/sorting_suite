require 'pry'

class BubbleSort

  def sort(array)
    finished = true
    while finished
      (array.length - 1).times do |i|
        finished = false
        while array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          finished = true
        end
      end
    end
    array
  end

end

# the number ONLY keeps going, and equates to true, when the values have not been properly sorted - once that occurs, it turns to false, and returns the sorted array
