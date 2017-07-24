module InsertionSort
  def insertion_sort(unsorted, sorted = [], element = nil, higher = [], lower = [])
    if unsorted.length > 0
      element = unsorted.shift
    end
    if element == nil
      sorted
    elsif sorted.length == 0
      sorted << element
      insertion_sort(unsorted, sorted)
    else
      sorted.each do |sorted_element|
        if element < sorted_element
          higher << sorted_element
        elsif element > sorted_element
          lower << sorted_element
        end
      end
      lower << element
      sorted = lower + higher
      insertion_sort(unsorted, sorted)
    end
  end
end
