require 'pry'

class InsertionSort

  def insert_new(to_insert, sorted)
    sorted_array = sorted
    array_ends = sorted.length - 1
    sorted.each.with_index do |value, i|
      if to_insert < sorted[i]
        sorted_array = sorted.insert(i, to_insert)
        break
      elsif i == array_ends
        sorted_array << to_insert
        break
      end
    end
    sorted_array
  end

  def sort(unsorted)
    unsorted
  end

end
