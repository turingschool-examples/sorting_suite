require 'pry'

class BubbleSort

  attr_reader :array,
              :index

  def initialize
    @index = 0
  end

  def sort(array)
    @array = array
    swapped = true
    size = @array.length - 1
    while swapped
      @index = 0
      swapped = false
      while @index < size
        if @array[@index] > @array[@index + 1]
          @array[@index], @array[@index + 1] = @array[@index + 1], @array[@index]
          swapped = true
        end
        @index += 1
      end
    end
  end

end
