require 'pry'

class BubbleSort

  def initialize(unsorted)
    @unsorted = unsorted
    @index = 0
  end

  def sort_sequence
    if @unsorted[@index] > @unsorted[@index + 1]
      @unsorted[@index], @unsorted[@index + 1] = @unsorted[@index + 1], @unsorted[@index]
    end
  end

  def bubble
    while @index < @unsorted.length - 1
      sort_sequence
      @index += 1
    end
  end

end
