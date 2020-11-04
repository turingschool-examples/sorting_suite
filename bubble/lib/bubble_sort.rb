class BubbleSort

  def sort(to_sort)
    n = to_sort.length
    loop do
      sorted = false
      (n-1).times do |index|
        if to_sort[index] > to_sort[index + 1]
          to_sort[index], to_sort[index + 1] = to_sort[index + 1], to_sort[index]
          sorted = true
        end
      end
      break if !sorted
    end
    to_sort
  end


end
