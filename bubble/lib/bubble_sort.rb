class BubbleSort

  def sort(sortee)
    element_count = sortee.count
    element_count.times { single_pass_sort(sortee) }
    sortee
  end

  def single_pass_sort(sortee)
    sortee.each_index { |index| pair_sort(sortee, index) }
  end

  def pair_sort(sortee, index)
    current = sortee[index + 1]
    return if current.nil?
    previous = sortee[index]

    if current < previous
      sortee[index] = current
      sortee[index + 1] = previous
    end
    sortee
  end

end
