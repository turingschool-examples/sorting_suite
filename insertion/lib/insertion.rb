class InsertionSort
  def sort(array)
    unsorted = array
    element = array.shift
    insert(element, unsorted)
  end

  def insert(element, unsorted, sorted = [])
    if unsorted.length == 0
      sorted
    elsif unsorted[0] > element
      sorted.unshift(element)
      insert(element, unsorted, sorted)
    end
    # else
    # position = find_insert_position(unsorted, element)

  end

  # def find_insert_position(array, element)
  #
  # end



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
