class MergeSort
  def sort(array)
    # split the array into nth list until each list has only one element.
    # [2, 0, 1, 3]
    # => [[2, 0], [1, 3]]
    # => [2]
    # => [0]
    # => [1]
    # => [3]
    # compare the two arrays on the left side first and swap them accordingly. Put them back into an array together.
    # => [0, 2]
    # compare the two arrays on the right side and swap them accordingly. Put them back into an array together.
    # => [1 ,3]
    # compare the left array with the right away, starting with the first index.
    # => 0
    # => 0, 1
    # => 0, 1, 2
    # => 0, 1, 2, 3
    if array.length == 1
      return array
    end

    left_array = []
    right_array = []

    array.each_with_index do |element, index|
      if index < (array.length / 2)
        left_array << element
      else
        right_array << element
      end
    end
    left_array = sort(left_array)
    right_array = sort(right_array)
    merge(left_array, right_array)
  end

  def merge(left_array, right_array)
    result = []
    while !left_array.empty? && !right_array.empty?
      if left_array[0] < right_array[0]
        result << left_array.shift
      else
        result << right_array.shift
      end
    end
    while !left_array.empty?
      result << left_array.shift
    end
    while !right_array.empty?
      result << right_array.shift
    end
    result
  end
end

sorter = MergeSort.new
p sorter.sort(["d", "b", "a", "c"])
