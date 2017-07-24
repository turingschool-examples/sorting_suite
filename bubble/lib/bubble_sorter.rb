require 'pry'
class BubbleSorter
  attr_reader :array

def initialize(arr)
  @array = arr
end

def call_comparison_again
  @array.length.times do | i |
    compare_elements
  end
  @array
end

def compare_elements
  index = 0
  until index == @array.length-1
    if @array[index] > @array[index+1]
      @array[index], @array[index + 1] = @array[index + 1], @array[index]
      index+=1
    else
      index+=1
    end
  end
  @array
end

end
