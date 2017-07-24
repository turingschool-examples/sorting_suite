require 'pry'

class InsertionSort
attr_accessor :unsorted, :sorted

  def start(array)
    @unsorted = array
    @sorted = []
    @sorted << @unsorted[0]
    @unsorted.shift
  end

  def sort


end
