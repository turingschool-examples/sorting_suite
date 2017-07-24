require 'pry'

class InsertionSort

  attr_reader :unsorted,
              :sorted

  def initialize
  end

  def sort(array)
    @unsorted = array
    @sorted = []
    index = 0
    insertion_at_index(index)
    while unsorted[0] != nil
      if sorted[index] != nil
        if unsorted[0] < sorted[index]
          insertion_at_index(index)
          index = 0
        else
          index += 1
        end
      else
        insertion_at_end
        # @sorted.push(@unsorted[0])
        # @unsorted.shift
        index = 0
      end
    end
  end

  def insertion_at_index(index)
    @sorted.insert(index, @unsorted[0])
    @unsorted.shift
  end

  def insertion_at_end
    @sorted.push(@unsorted[0])
    @unsorted.shift
  end

end
