class BubbleSort

 def sort(data)
     data.count.times do
       data.map.with_index do |item, index|
         if data[index+1] == nil
         elsif data[index] > data[index+1]
           data[index], data[index+1] = data[index+1], data[index]
         end
       end
     end
     p data
   end
end
