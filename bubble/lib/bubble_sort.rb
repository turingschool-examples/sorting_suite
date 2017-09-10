class BubbleSort

  def sort(sortee)
    repeats = sortee.count
    repeats.times { single_pass_sort(sortee) }
    sortee
  end

  def single_pass_sort(sortee)
    sortee.each_index do |index|
      pair_sort(sortee, index)
    end
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
