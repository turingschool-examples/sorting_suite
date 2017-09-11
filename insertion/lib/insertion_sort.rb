class InsertionSort


  def insertion_sort(list)
    (1...list.length).each do |index|
       position = index
       while position > 0 && list[position] < list[position-1]
         list[position], list[position-1] = list[position-1], list[position]
         position -= 1
       end
   end
   list
 end


  end
