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
  end
end
