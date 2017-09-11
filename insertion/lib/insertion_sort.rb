class InsertionSort

  def sort(array)
    sorted = []
    until array.empty? do
      first = array.shift
      count = 0
      if sorted.empty?
        sorted << first
      else
        find_insertion_point(first, count, sorted)
      end
    end
    sorted
  end

  def find_insertion_point(first, count, sorted)
    sorted.length.times do |index|
      if sorted[index] >= first && count != 1
        sorted.insert(index, first)
        count = 1
      elsif index == (sorted.length - 1) && count == 0
        sorted << first
      end
    end
  end

end
