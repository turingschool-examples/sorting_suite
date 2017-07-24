class BubbleSort

 def get_sorted_results(data_set)
   data_set.each do
     counter = 0
     data_set.each_with_index do |element, index|
       break if index == (data_set.length - 1)
       if element > data_set[index + 1]
         data_set[index], data_set[index + 1] = data_set[index + 1], data_set[index]
         counter += 1
       end
     end
     break if counter == 0
   end
   data_set
 end

 def sorting_bubbles(data_set)
   data_set.each do
     swap_count = 0
     data_set.each.with_index do |number, index|
       break if data_set[index + 1].nil?
       if number > data_set[index + 1]
         data_set[index], data_set[index + 1] = data_set[index + 1], data_set[index]
         swap_count += 1
       end
     end
     break if swap_count == 0
   end
   data_set
 end

 def bubble_sort_tacular(data_set)
   loop until data_set.each_cons(2).with_index.none? do |(previous, current), index|
     data_set[index], data_set[index + 1] = current, previous if previous > current
   end
   data_set
 end

end
