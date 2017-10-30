class InsertionSort
  attr_reader :sorted

  def initialize
    @sorted = []
  end

  def sort(array)
    array.each do |number|
      if @sorted.empty?
        @sorted << number
      else insertion(number)
      end
    end
    @sorted
  end

  def insertion(unsorted_number)
    @sorted.each.with_index do |number, index|
      if unsorted_number > @sorted.last
        @sorted << unsorted_number
      elsif number > unsorted_number
        @sorted.insert(index, unsorted_number)
        break
      end
    end
  end
end
