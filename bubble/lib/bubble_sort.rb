require 'pry'
class BubbleSort


  def sort(list)
    length = list.length
    loop do
    swapped = false

        (length - 1).times do |n|
          if list[n] > list[n+1]
           list[n], list[n+1] = list[n+1], list[n]
           swapped = true
          end
        end

      break if not swapped
      end
        list
  end


end
