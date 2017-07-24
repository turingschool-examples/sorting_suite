# At each array-position, it checks the value there against the largest value in the sorted list (which happens to be next to it, in the previous array-position checked). If larger, it leaves the element in place and moves to the next. If smaller, it finds the correct position within the sorted list, shifts all the larger values up to make a space, and inserts into that correct position.

class InsertSort

  def initialize(arr)
    @unsorted = arr
    @sorted = []
  end


  def sort
    @sorted << @unsorted.shift

    until @unsorted.empty?

      @unsorted.each do |unsorted_element|

        if unsorted_element < @sorted.first
            @sorted.unshift(unsorted_element)
              @unsorted-=[unsorted_element]

        elsif unsorted_element > @sorted.last
            @sorted << unsorted_element
            @unsorted-=[unsorted_element]
        else
            sort_within_sorted_array(unsorted_element, index = 1 )
        end
      end
    end
      @sorted
  end

  def sort_within_sorted_array(unsorted_element, index)
    sorted_element = @sorted[index]

    if (sorted_element[+1] == nil) && (unsorted_element < sorted_element)
      @sorted.insert(index, unsorted_element) 
      @unsorted-=[unsorted_element]

    elsif (sorted_element > unsorted_element)
      @sorted.insert(index, unsorted_element)
      @unsorted-=[unsorted_element]

    elsif (sorted_element < unsorted_element) && (unsorted_element < @sorted[index+1])
     @sorted.insert(index+1, unsorted_element)
     @unsorted-=[unsorted_element]

    else
     sort_within_sorted_array(unsorted_element, index+1)

   end
   @sorted
 end
end
