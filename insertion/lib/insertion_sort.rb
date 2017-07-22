class InsertionSort
  def sort(unsorted, sorted = [], element = nil, higher = [], lower = [])
    if unsorted.length > 0
      element = unsorted.shift
    end
    if element == nil
      sorted
    elsif sorted.length == 0 #|| element > sorted.last
      sorted << element
      sort(unsorted, sorted)
    # elsif sorted[0] > element
    #   sorted.unshift(element)
    #   sort(unsorted, sorted)
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

#
# unsorted:      [1,0,4,3,2]
# to insert:     1
# sorted pre:    []
# sorted post:   [1]
# unsorted post: [0,4,3,2]

#
# unsorted:      [0,4,3,2]
# to insert:     0
# sorted pre:    [1]
# sorted post:   [0,1]
# unsorted post: [4,3,2]

#
# unsorted:      [4,3,2]
# to insert:     4
# sorted pre:    [0,1]
# sorted post:   [0,1,4]
# unsorted post: [3,2]
