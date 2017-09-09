require 'pry'
class BubbleSort

  def sort(list)
    length = list.length
    n = 1
      while length != n
        current_position = list[n]
        previous_position = list[n-1]
        if previous_position > current_position
           current_position, previous_position = current_position, previous_position
           n+= 1
          
        else
        end
      end

        list

        # previous_position = array[index 1 - 1]
        #evaluate if previous_position > than next position
        # if true, swap current position and next
        #and 1 to the index
        #evaluate the next position
        #then evaluate the next position
    binding.pry
  end
end
