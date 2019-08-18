class InsertionSort

  attr_reader :sorted

  def initialize
    @sorted = []
  end

  def pull_element_from_unsorted(unsorted)
    unsorted.shift
  end

  def sort(unsorted)
    until unsorted.empty?
      element_placement_into_sorted(unsorted)
    end
    sorted
  end

  def element_placement_into_sorted(unsorted)
    sorted.unshift(pull_element_from_unsorted(unsorted))
    sorted.each_with_index do |element, index|
      if sorted[index + 1].nil?
        element
      elsif element <= sorted[index + 1]
        element
      elsif element > sorted[index + 1]
        sorted[index], sorted[index + 1] = sorted[index + 1], sorted[index]
      end
    end
  end

end
