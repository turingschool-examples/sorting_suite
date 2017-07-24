class BubbleSort

  def sort(list)
    loop_count = (list.count) - 1
    loop_count.times do
      bubble_iteration(list, loop_count)
    loop_count -= 1
    end
  list
  end

  def bubble_iteration(list, loop_count)
    array_count = 0
    loop_count.times do
      swap_elements_if_needed(list, array_count)
      array_count += 1
    end
  end


  def swap_elements_if_needed(list, array_count)
    if list[array_count] > list[array_count + 1]
      hold_list = list[array_count]
      list[array_count] = list[array_count + 1]
      list[array_count + 1] = hold_list
    end
  end

end


# b = Bubblesort.new
# b.sort
