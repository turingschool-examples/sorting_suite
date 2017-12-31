require "pry"

class InsertionSort

  def sort(to_sort)
    puts pre_sort(to_sort)
    to_sort = start_format(to_sort)
    to_sort = sorting(to_sort)
    finish_format(to_sort)
  end

  def sorting(to_sort, place = 0)
    while place < to_sort.length
      current_sorting = to_sort[place]
      holding = place
      while holding > 0 && to_sort[holding - 1] > current_sorting
        to_sort[holding] = to_sort[holding - 1]
        holding -= 1
      end
      to_sort[holding] = current_sorting
      place += 1
    end
    to_sort
  end

  def start_format(to_sort)
    to_sort.reduce([]) do |result, letter|
      result << letter.ord
    end
  end

  def finish_format(to_sort)
    to_sort.reduce([]) do |result, number|
      result << number.chr
    end
  end

  def pre_sort(to_sort)
    if to_sort[0].class == Integer || to_sort[0].class == String
      "Sorting..."
    else
      "Please put in letters or numbers."
    end
  end

end
