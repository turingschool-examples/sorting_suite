require "pry"

class InsertionSort

  # attr_reader :seedlings

  def sort(array)
    # binding.pry
    seedlings = []
    sequoias = array
    seedlings.push(sequoias.shift)

    for tree in sequoias
      i = 0
      while i <= (seedlings.length - 1)
        #while the index/counter is less than value of the last index of the array...
        if tree <= seedlings[i]
          #if the array element is less than the specified array element...
          seedlings.insert(i, tree)
          #insert the compared element into the new aray
          i += 1
          break #if this statement was the one that ran, break out of the if  logic and return to the While loop conditions
        elsif i == seedlings.length - 1
          #if the index/counter is equal to the index of the last element in the new array, there are no other options but that this is the largest number and it needs to be inserted in the last place.
          seedlings.insert(-1, tree)
          #insert in the last place.  This might need to be a calculated i instead of [-1].
          break #this really isn't necessary
        elsif #if n isn't less than the current indexand isn't the last in the array, it's somewhere in the middle, so add to i and run the While loop again.
          i += 1
        end
      end
      # return seedlings not here because this is still in the while loop
    end
    return seedlings #here because I need the value back from the fo loop.
  end

end
