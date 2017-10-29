require './lib/insertion_sort'

class MergeSort
  attr_reader :sorted

  def initialize
    @sorted = []
  end

  def sort(elements)
    size = elements.count
    return elements if size <= 1
    half_1 = []
    half_2 = []
    elements.each.with_index do |element, index|
      if index < size/2
        half_1 << element
      else
        half_2 << element
      end
    end
    if half_1.length == 1 && half_2.length == 1
      if half_2.first < half_1.first
        return half_2, half_1
      else
        return half_1, half_2
      end
    end
    half_1 = sort(half_1.flatten)
    half_2 = sort(half_2.flatten)
    return merge(half_1.flatten, half_2.flatten)
  end

  def merge(half_1, half_2)
    result = []
    while !half_1.empty? && !half_2.empty?
      if half_1.first <= half_2.first
        result << half_1.shift
      else
        result << half_2.shift
      end
    end
    while !half_1.empty?
      result << half_1.shift
    end
    while !half_2.empty?
      result << half_2.shift
    end
    result
  end

end
