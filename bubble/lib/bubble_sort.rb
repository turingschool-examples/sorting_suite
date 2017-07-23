require 'pry'

class BubbleSort

  def bubble_sort(list)
    n = list.length
    loop do
     swapped = false

     (n-1).times do |i|
       if array[i] > array[i+1]
         array[i], array[i+1] = array[i+1], array[i]
         swapped = true
       end
     end

     break if not swapped
   end

   array
  end
end
