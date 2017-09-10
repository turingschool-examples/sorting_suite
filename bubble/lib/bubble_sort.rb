class BubbleSort

  def initialize
    @count = 0
  end

  def swap_letters(letters, letter, index)
    if index != (letters.count - 1) && letter > letters[index + 1]
      letters[index], letters[index + 1] = letters[index + 1], letters[index]
    end
  end

  def check_count(sorted)
    if @count < (sorted.length - 1)
      sort(sorted)
    else
      sorted
    end
  end

  def sort(letters)
    sorted = letters.each_with_index do |letter, index|
      swap_letters(letters, letter, index)
    end
    @count += 1
    check_count(sorted)
  end

end
