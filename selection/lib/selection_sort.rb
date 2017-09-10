class SelectionSort
  #I think it's wrong to use #min here, otherwise would be cleaner

  def sort(source)
    self.sort!(source.dup)
  end

  def sort!(array)
    #TODO BAD FOR NON-NUMBERS ARBITRARY COMPARABLES
    first_sorted_at = array.length
    until first_sorted_at == 0
      min = {
        value: array[0],
        count: 1
      }
      (1...first_sorted_at).each do |compare_at|
        if array[compare_at] < min[:value]
          min = {
            value: array[compare_at],
            count: 1
          }
        elsif array[compare_at] == min[:value]
          min[:count] += 1
        end
      end
      array.delete(min[:value])
      array.fill(min[:value], array.size, min[:count])
      first_sorted_at -= min[:count]
    end
    array
  end

end
