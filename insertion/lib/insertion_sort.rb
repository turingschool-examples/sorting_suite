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
    @sorted.insert(index, unsorted[index])
    # @sorted << unsorted[index]
    @unsorted.delete(unsorted[index])
    # if sorted[index] < unsorted[index]
    #   @sorted << unsorted[index]
    #   @unsorted.delete(unsorted[index])
    # end
  end

end
