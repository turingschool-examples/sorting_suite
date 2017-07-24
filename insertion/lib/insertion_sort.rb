require 'pry'

class InsertionSort

  def insertion_sort(list)
    (0..list.length - 1).count do |index|
      inserted_value = list.delete(index)
      new_index = index
      new_index -= 1 while new_index > 0 && inserted_value < list[new_index - 1]

      list.insert(new_index, inserted_value)
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
