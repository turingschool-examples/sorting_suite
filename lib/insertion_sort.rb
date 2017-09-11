class SortingSuite::InsertionSort

  def sort(source)
    sorted = []
    source.each do |to_insert|
      sorted.each_with_index do |compare_to, compare_at|
        if to_insert <= compare_to
          sorted.insert(compare_at, to_insert)
          to_insert = nil
          break
        end
      end
      sorted << to_insert unless to_insert.nil?
    end
    sorted
  end


  def sort!(array)
    first_unsorted_at = 0
    until first_unsorted_at == array.length
      to_insert = array.pop
      first_unsorted_at.times do |compare_at|
        if to_insert <= array[compare_at]
          array.insert(compare_at, to_insert)
          to_insert = nil
          break
        end
      end
      array.insert(first_unsorted_at, to_insert) unless to_insert.nil?
      first_unsorted_at += 1
    end
    array
  end

end
