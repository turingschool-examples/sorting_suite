require 'pry'

class BubbleSort

  def initialize(unsorted)
    @unsorted = unsorted
    @index = 0
  end

  def sort_sequence
    previous = @unsorted[@index]
    current = @unsorted[@index + 1]
    placeholder = 0

    if current < previous
      placeholder = current
      current = previous
      previous = placeholder
    end

    @unsorted[@index + 1] = current
    @unsorted[@index] = previous
    @unsorted
  end

  def bubble
    while @index < @unsorted.length - 1
      sort_sequence
      @index += 1
    end
  end

end
