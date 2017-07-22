require 'pry'

class Bubble
  def sort(array)
    done = false
    until done
      (array.length - 1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
        end
        done = true
      end
    end
    array
  end
end

bub = Bubble.new
binding.pry
