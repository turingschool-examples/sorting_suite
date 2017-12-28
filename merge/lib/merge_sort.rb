require "pry"

class MergeSort
  # 
  # def initialize
  #   @result = []
  # end

  def sort(to_sort)
    puts pre_sort(to_sort)
    to_sort = start_format(to_sort)
    slice_arrays(to_sort)
  end

  def slice_arrays(to_sort)
    if to_sort.length <= 1
      to_sort
    else
      middle = (to_sort.length / 2)
      @left = to_sort[0..middle - 1]
      @right = to_sort[middle..-1]
    end
    merge
  end

  def merge
    if @left.empty?
      @right
    elsif @right.empty?
      @left
    elsif @left.first < @right.first
      [@left.first] + merge
    else @right.first < @left.first
      [@right.first] + merge
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
