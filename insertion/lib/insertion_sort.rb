require 'pry'

class InsertionSort

  def insert_sorted_value(sorted, to_insert)
    sorted.each.with_index do |value, i|
      return sorted.insert(i, to_insert) if to_insert < value
    end
    sorted << to_insert
  end

  def sort(unsorted)
    unsorted.reduce([]) do |sorted, to_insert|
      insert_sorted_value(sorted, to_insert)
    end
  end

end
