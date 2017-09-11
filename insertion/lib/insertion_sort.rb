class InsertionSort

  def sort(list)

    sorted = []

    list.count.times do

      value_to_sort = list.shift

      if sorted.count == 0
        sorted << value_to_sort
      end

      if value_to_sort > sorted.last
        sorted << value_to_sort
      elsif sorted.count == 1 && value_to_sort < sorted.last
        sorted.insert(0, value_to_sort)
      else
        index = -1
        if value_to_sort < sorted[index]
          until sorted[index] == nil || value_to_sort > sorted[index]
          index -= 1
          end
          sorted.insert(index, value_to_sort)
        end
      end
    end
    sorted
  end

end
