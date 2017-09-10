
class BubbleSort


  def sort(list)
    length = list.length
    loop do
    swapped = false

        (length - 1).times do |index|
          if list[index] > list[index+1]
           list[index], list[index+1] = list[index+1], list[index]
           swapped = true
          end
        end

      break if not swapped
      end
        list
  end


end
