class InsertionSort
  def sort(unsorted, sorted = [], element = nil, higher = [], lower = [])
    if unsorted.length > 0
      element = unsorted.shift
    end
    if element == nil
      sorted
    elsif sorted.length == 0
      sorted << element
      sort(unsorted, sorted)
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
      sort(unsorted, sorted)
    end
  end
end
