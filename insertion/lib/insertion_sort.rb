require 'pry'

class InsertionSort

  def insert_new(to_insert, sorted)
    if sorted.empty?
      [to_insert]
    else
      place_in_array(to_insert, sorted)
    end
  end

  def place_in_array(to_insert, sorted)
    array_ends = sorted.length - 1
    sorted_array = sorted
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
    sorted = []

    until unsorted.empty? do
      sorted = insert_new(unsorted.shift, sorted)
    end

    sorted
  end

end
