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
    @sorted.insert(0, unsorted[0])
    @unsorted.delete(unsorted[0])
    while unsorted[0] != nil
      if unsorted[0] < sorted[index]
        @sorted.insert(index, unsorted[0])
        @unsorted.delete(unsorted[0])
        index = 0
      else unsorted[0] > sorted[index]
        index += 1
      end
    end
    # if sorted[index] < unsorted[index]
    #   @sorted << unsorted[index]
    #   @unsorted.delete(unsorted[index])
    # end
  end

end
