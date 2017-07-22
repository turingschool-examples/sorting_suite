class InsertionSort
  def sort(array)
    # Create an empty `sorted` array
    # Pull the first element from the unsorted array and insert it into the sorted array.
    # Pull the first unsorted element and compare it to the first element of the sorted array.
      # If the unsorted element is smaller than the first element of the sorted array, insert it before the sorted element.
      # Else, insert it after the sorted element.
    # Pull the first unsorted element and compare it to the first element in the sorted array.
      # If the unsorted element is smaller than the first element in the sorted array, insert it before the sorted element.
      # Else, compare it to the second sorted element. If it is smaller, insert it before the second sorted element. If it is larger, insert it after.
    # Repeat until the unsorted array is empty.
    sorted = []
    sorted << array[0]
    array.shift
    i = 0
    current = array[0]
    until array.empty?
      if sorted[i] > current
        sorted.insert(i, current)
        array.shift
        current = array[0]
      else
        i += 1
        current = array[0]
        if sorted[i].nil?
          sorted.insert(i, current)
          array.shift
          # binding.pry
        end
      end
    end
    sorted
  end
end
