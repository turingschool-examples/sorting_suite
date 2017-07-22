class Bubble

  attr_reader :array

  def initialize(array)
    @array = array
  end

  # def sorter
  #   previous = @array[0]
  #   @array.each_with_index do |num, index|
  #     next if index == 0
  #     if num < previous
  #       new_index = index - 1
  #       @array[index], @array[new_index] = @array[new_index], @array[index]
  #     end
  #     previous = num
  #   end
  #   @array
  # end

  def sorter
    previous = @array[0]
    @array.each_with_index do |num, index|
      if index == 0
        next
      elsif num < previous
        new_index = index - 1
        @array[index], @array[new_index] = @array[new_index], @array[index]
        previous = @array[index]#might be wrong
      else
        previous = @array[index]
      end
    end
    @array
  end

end
