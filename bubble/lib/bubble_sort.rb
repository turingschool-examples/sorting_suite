class BubbleSort

  def sort(letters)
    repeats = letters.count
    repeats.times { single_pass_sort(letters) }
    letters
  end

  def single_pass_sort(letters)
    letters.each_index do |index|
      pair_sort(letters, index)
    end
  end

  def pair_sort(letters, index)
    current = letters[index + 1]
    return if current.nil?
    previous = letters[index]

    if current < previous
      letters[index] = current
      letters[index + 1] = previous
    end
    letters
  end

end
