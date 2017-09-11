class BubbleSort
  def sort(values)
    loop do
      swapped = false
      (values.length-1).times do |index|
        if values[index] > values[index + 1]
          values[index], values[index + 1] = values[index + 1], values[index]
          swapped = true
        end
      end
      break if swapped == false
    end
    values
  end

end
