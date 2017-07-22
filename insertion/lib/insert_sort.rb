# At each array-position, it checks the value there against the largest value in the sorted list (which happens to be next to it, in the previous array-position checked). If larger, it leaves the element in place and moves to the next. If smaller, it finds the correct position within the sorted list, shifts all the larger values up to make a space, and inserts into that correct position.

class InsertSort
  attr_reader :sorted,
              :unsorted

  def initialize(arr)
    @sorted = []
    @unsorted = arr
  end

  def send_first_element_into_sorted
    @sorted << @unsorted.shift
  end


end
