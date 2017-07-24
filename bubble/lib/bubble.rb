require 'pry'

class Bubble

  def sort(array)
    done = false
    while !done
      done = true
      (array.length - 1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          done = false
        end
      end
    end
    array
  end

end
