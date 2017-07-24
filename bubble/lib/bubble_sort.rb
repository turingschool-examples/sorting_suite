require 'pry'

class BubbleSort

  attr_reader :array

  def initialize
    @array = []
  end

  def sort(array)
    index = 0
    @array = array
    swapped = true
    while swapped
      index = 0
      swapped = false
      while index < @array.length - 1
        if @array[index] > @array[index + 1]
          swap(index)
          swapped = true
        end
        index += 1
      end
    end
  end

  def swap(index)
    @array[index], @array[index + 1] = @array[index + 1], @array[index]
  end

end
