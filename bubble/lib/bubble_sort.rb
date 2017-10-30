class BubbleSort
  def self.sort(to_sort)
    to_sort.length.times do
      move_item(to_sort)
    end
    to_sort
  end

  def self.move_item(to_sort)
    to_sort.each_index do |index|
      if compare_with_next(to_sort, index) == 1
        swap_values(to_sort, index)
      end
    end
  end

  def self.swap_values(to_sort, index)
    to_sort[index], to_sort[index+1] = to_sort[index+1], to_sort[index]
  end

  def self.compare_with_next(to_sort, index)
    to_sort[index] <=> to_sort[index + 1]
  end

end
