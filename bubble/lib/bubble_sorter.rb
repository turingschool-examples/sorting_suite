require 'pry'
class BubbleSorter
  attr_reader :array

def initialize(arr)
  @array = arr
  # @previous = array[0]
  # @current = arr[1]
end


def compare_two_elements
  index = 0
  if @array[index] > @array[index +1]
    @array[index], @array[index + 1] = @array[index + 1], @array[index]
  end
end

# def do_it_this_many_times
#   @array.length.times do | element |
#
#   end
# end


# def compare_elements
#   current = @array[1]
#   @array[index] = current
#
#   array = @array.each_with_index do |element, index|
#     if current > element
#     element, current = current, element
#     end
#     current = @array[index+1]
#   end
#   array
# end


end
