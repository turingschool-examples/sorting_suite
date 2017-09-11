class InsertionSort

  attr_reader :sorted

  def initialize
    @sorted = []
    @index = 0
  end

  def check_sorted(unsorted)
    if @sorted.length == 0
      @sorted.push(unsorted[0])
      unsorted.shift
    end
  end

  def check_unsorted_count(unsorted)
    if unsorted.count != 0
      sort(unsorted)
    end
  end

  def compare_letters(unsorted, first_letter)
    if first_letter < @sorted[@index]
      @sorted.insert(@index, first_letter)
    elsif first_letter > @sorted[@index] && @index == (@sorted.count - 1)
      @sorted << first_letter
    elsif first_letter > @sorted[@index]
      @index += 1
      sort(unsorted)
    end
  end

  def sort(unsorted)
    check_sorted(unsorted)
    first_letter = unsorted[0]
    compare_letters(unsorted, first_letter)
    unsorted.shift
    check_unsorted_count(unsorted)
    @sorted
  end

end
