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
    @sorted << unsorted[index]
    @unsorted.delete(unsorted[index])
  end

end
