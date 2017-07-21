class BubbleSort
  def sort(in_set)
    if in_set.length == 1
      return_set = in_set
    else
      # until
        (in_set.length - 1).times do |index|
          if in_set[index] > in_set[index + 1]
            save = in_set[index]
            in_set[index] = in_set[index + 1]
            in_set[index + 1] = save
            switched = true
          end
        end
      # end
    end
    in_set
  end


end
