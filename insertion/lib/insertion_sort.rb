require 'pry'

class InsertionSort

  def insertion_sort(list)
    0.upto(list.length - 2) do |index|
      value_to_change = list.delete(index)
      new_index = index
      new_index -= 1 while new_index > 0 && value_to_change < list[new_index - 1]

      list.insert(new_index, value_to_change)
    end
    list
  end

  # def insertion_sort(list)
  #   sorted = []
  #   until list.empty?
  #     sorted << list.delete(list.min)
  #   end
  #   sorted
  # end

end
