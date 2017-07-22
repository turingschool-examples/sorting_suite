require 'pry'
class Insertion

  def sort(unsorted)
    sorted = []
    # to_insert = unsorted.shift
    # sorted << to_insert
    until unsorted.count == 0
      binding.pry
      to_insert = unsorted.shift
      sorted.each_with_index.map do |element, index|
        if to_insert > element
          sorted.insert(index, to_insert)
        end
      end
    end
    sorted
  end
end
