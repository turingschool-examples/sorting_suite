require 'pry'
class InsertionSort
  def sort(array, sorted = [])
    return [] if array.empty?
    first = array.shift
    sorting(first, sorted)
    sort(array, sorted) unless array.empty?
    sorted
  end

  def sorting(first, sorted)
    if sorted.empty?
      sorted << first
    else
      positioning(first, sorted)
    end
  end

  def positioning (first, sorted, count = 0)
    sorted.length.times do |index|
      if sorted[index] > first && count != 1
        sorted.insert(index, first)
        count = 1
      elsif index == (sorted.length - 1) && count == 0
        sorted << first
      end
    end
    sorted
  end
end
