require 'pry'
require 'benchmark'
class BubbleSort

  def bubble(unsorted_items)
    number_swaper = 1
      until number_swaper == unsorted_items.length

        unsorted_items.each.with_index do |item, index|
          compare = unsorted_items[index + 1]
          next unless compare

          if item > compare
            unsorted_items = evaluate_sorted(index, unsorted_items)
          end

        end
      number_swaper += 1
      end
    unsorted_items
  end

  def evaluate_sorted(index, items)
    sorted_array = items[index]
    items[index] = items[index+1]
    items[index+1] = sorted_array
    items
  end

end
