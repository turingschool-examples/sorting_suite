class Merge
  def sort(array)
    sorted = []
    until array.empty?
      first_array(sorted, array)
    end
    sorted
  end

  def first_array(sorted, array)
    first = array.shift(2)
    if sorted.empty?
      positioning_first_array(sorted, first)
    else
      positioning(first, sorted)
    end
  end

  def positioning_first_array(sorted, first)
    sorted << first.shift
    sorted.length.times do |index|
      if sorted[index] > first[index]
        sorted.insert(index, first[index])
      else
        sorted << first[index]
      end
    end
    sorted
  end

  def positioning(first, sorted)
    until first.empty?
      count = 0
      element = first.shift
      positioning_single_element(element, sorted, count)
    end
    sorted
  end

  def positioning_single_element(element, sorted, count)
    sorted.length.times do |index|
      if sorted[index] > element && count != 1
        sorted.insert(index, element)
        count = 1
      elsif index == (sorted.length - 1) && count == 0
        sorted << element
      end
    end
    sorted
  end
end
