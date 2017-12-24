require "pry"

class BubbleSort

  def sort(to_sort)
    puts pre_sort(to_sort)
    how_many = to_sort.length
    to_sort = start_format(to_sort)
    sorting_loop(to_sort, how_many)
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

  def sorting_loop(to_sort, how_many)
    loop do
      ordered = false
      (how_many - 1).times do |num|
        if to_sort[num] > to_sort[num + 1]
          to_sort[num], to_sort[num + 1] = to_sort[num + 1], to_sort[num]
          ordered = true
        end
      end
      break if ordered == false
    end
    finish_format(to_sort)
  end

  def pre_sort(to_sort)
    if to_sort[0].class == Integer || to_sort[0].class == String
      "Sorting..."
    else
      "Please put in letters or numbers."
    end
  end

end
