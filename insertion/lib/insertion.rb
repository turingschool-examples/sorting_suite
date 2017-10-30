=begin
sorter = InsertionSort.new
=> #<InsertionSort:0x007f81a19e94e8>
sorter.sort(["d", "b", "a", "c"])
=> ["a", "b", "c", "d"]
=end

class InsertionSort

  def sort(field)
    sorted_array = []
    push_first_element(sorted_array, field)
    field.shift
    @num1 = 0
    (field.count * field.count).times do
    comp1 = sorted_array[@num1]
    comparison_tree(comp1, sorted_array, field)
    end
  puts sorted_array
  end

  def push_first_element(sorted_array, field)
    sorted_array << field[0]
  end

  def comparison_tree(comp1, sorted_array, field)
    if (field[0] <=> comp1) == 1
      @num1 += 1
    elsif (field[0] <=> comp1) == -1
      sorted_array.insert((sorted_array.index(comp1)), field[0])
      @num1 = 0
      field.shift
    elsif comp1 == nil
      sorted_array << field[0]
      @num1 = 0
      field.shift
    end

  end

end
