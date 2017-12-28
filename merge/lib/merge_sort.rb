require "pry"

class MergeSort
  
  def initialize
    @result = []
  end

  def sort(to_sort)
    puts pre_sort(to_sort)
    to_sort = start_format(to_sort)
    to_sort = slice_arrays(to_sort)
    to_sort = finish_format(to_sort)
  end

  def slice_arrays(to_sort)
    if to_sort.length <= 1
      to_sort
    else
      middle = (to_sort.length / 2)
      left = to_sort[0..middle - 1]
      right = to_sort[middle..-1]
    end
    merge(left, right)
  end

  def merge(left, right)
    if left[0].nil?
      right
    elsif left.first > right.first
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
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
