#documenting first attempt before using resources to better understand the problem.

class FirstAttemptBubbleSort
attr_reader :original,
            :current_index,
            :previous_index,
            :current_value,
            :previous_value,
            :number_of_swaps,
            :current_order

  def initialize(original)
    @original = original
    @current_index = 1
    @previous_index = @current_index - 1
    @number_of_swaps = 0
    @current_order = original
  end

  def count
    @original.count
  end

  def value(index)
    @original[index]
  end

  def compared_values
    [value(@previous_index), value(@current_index)]
  end

  def swap
    compared_values

    if compared_values[0] > compared_values[1]
      prev_value = compared_values[1]
      cur_value = compared_values[0]
      new_values = []
      new_values += [prev_value, cur_value]
      @previous_value = new_values[0]
      @current_value = new_values[1]
      @number_of_swaps += 1
    else
      @previous_value
      @current_value
    end

    @current_index += 1
    @previous_index += 1
  end

end
