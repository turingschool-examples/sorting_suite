require 'pry'
class Insertion

  def sort(unsorted)
    sorted = []
    unsorted_item = unsorted.shift
    sorted << unsorted_item
    until unsorted.count == 0
      unsorted_item = unsorted.shift
      sorted.each_with_index.map do |sorted_item, index|
        insert_item_in_correct_spot(unsorted_item, sorted_item, index)
          if unsorted_item < sorted_item
            sorted.insert(index, unsorted_item)
            unsorted_item = nil
            break
          end
      end
      sorted << unsorted_item if unsorted_item != nil
    end
    sorted
  end
end
