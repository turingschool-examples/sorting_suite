class BubbleSort
  def sort(in_set)
    if in_set.length == 1
      return_set = in_set
    else
      while parse_through(in_set)
      end
    end
    in_set
  end

  def parse_through(in_set)
    switched = false
    (in_set.length - 1).times do |index|
      if in_set[index] > in_set[index + 1]
        switched = swap(index, in_set)
      end
    end
    switched
  end

  def swap(index, in_set)
    save = in_set[index]
    in_set[index] = in_set[index + 1]
    in_set[index + 1] = save
    switched = true
  end

end
