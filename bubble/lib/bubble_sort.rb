class BubbleSort

  def adv_current(current)
    current += 1
  end

  def adv_previous(previous)
    previous += 1
  end

  def compare_values(previous, current, array)
    if array[current] < array[previous]
      array[previous], array[current] = array[current], array[previous]
    end
    array
  end

end
