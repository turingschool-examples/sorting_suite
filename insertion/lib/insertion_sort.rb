class InsertionSort
  attr_accessor :sorted

  def initialize
    @sorted = []
  end

  def sort(array)
    @sorted << array.slice!(0)
    until array.empty?
      index = find_insertion_point(array)
      insert_value(index, array)
    end
    @sorted
  end

  def find_insertion_point(array)
      @sorted.each do |num|
      if array[0] <= num
        return @sorted.index(num)
      else
        return @sorted.index(@sorted[-1])
      end
    end
  end

  def one_element?(index)
    @sorted.length == 1 and index == 0
  end

  def insert_last_element(current_value)
    @sorted.push(current_value)
  end

  def insert_first_element(current_value)
    @sorted.unshift(current_value)
  end

  def insert_around_first_element(current_value)
    if current_value > @sorted[0]
      insert_last_element(current_value)
    else
      insert_first_element(current_value)
    end
  end

  def last_element?(index)
    index == @sorted.length - 1
  end

  def max_value?(current_value)
    current_value > @sorted[-1]
  end

  def insert_final_value(current_value, index)
    if max_value?(current_value)
      insert_last_element(current_value)
    else
      @sorted.insert(index, current_value)
    end
  end

  def insert_value(index, array)
    current_value = array.slice!(0)
    if one_element?(index)
      insert_around_first_element(current_value)
    elsif last_element?(index)
      insert_final_value(current_value, index)
    else
      @sorted.insert(index, current_value)
    end
  end

end
