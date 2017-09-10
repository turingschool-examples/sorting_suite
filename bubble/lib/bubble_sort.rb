class BubbleSort
  attr_reader :array, :n

  def initialize(array)
    @array = array
    @n = array.length
  end

  def check_if_next_element_is_bigger
    if array[n - 1] > array[n]
      swap
    end
  end

  def sort
    array[n - 1], array[n] = array[n],array[n - 1]
  end

end
