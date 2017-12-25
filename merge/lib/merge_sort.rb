require "pry"

class MergeSort

  def initialize
    @result = []
    @left   = 0
    @right  = 0

  def sort(to_sort)
    puts pre_sort(to_sort)
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
