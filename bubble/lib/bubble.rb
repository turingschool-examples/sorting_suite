class Bubble
  def sort(array)
    # Determine the length of the array
    # [2, 0, 1, 3, 4, 5] => 6
    # Take the first element and loop through the array comparing its value against the next element. If it is larger, swap and flip the value of `swap` to true.
    # Repeat the loop but with n-1 less time.
        # [2, 0, 1, 3, 4, 5] - swapped? true
        # [0, 2, 1, 3, 4, 5] - swapped? true
        # [0, 1, 2, 3, 4, 5] - swapped? false
    # Break the loop when the value of swapped is false.
    # Return the sorted array.
    n = array.length
    loop do
      swapped = false
      (n-1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        end
      end
      break if swapped == false
    end
    array
  end
end
