require "pry"

class MergeSort

  def sort(to_sort)
    puts pre_sort(to_sort)
    to_sort = start_format(to_sort)
    to_sort = slice_arrays(to_sort)
    to_sort = finish_format(to_sort)
  end

  def slice_arrays(to_sort)
    if to_sort.length == 1
      return to_sort
    else
      middle = (to_sort.length / 2)
      left = to_sort[0..middle - 1]
      right = to_sort[middle..-1]
    end
    to_sort_left = slice_arrays(left)
    to_sort_right = slice_arrays(right)
    merge(to_sort_left, to_sort_right)
  end

  def merge(left, right)
    result = []
    until left.empty? || right.empty?
      if left.first <= right.first
        result << left.shift
      else
        result << right.shift
      end
    end
    return result.concat(left,right)
  end

  def pre_sort(to_sort)
    if to_sort[0].class == Integer || to_sort[0].class == String
      "Sorting..."
    else
      "Please put in letters or numbers."
    end
  end

  def start_format(to_sort)
    to_sort.reduce([]) do |result, letter|
      result << letter.ord
    end
  end

  def finish_format(to_sort)
    to_sort.reduce([]) do |result, number|
      result << number.chr
    end
  end

end
