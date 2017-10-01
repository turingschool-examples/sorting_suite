class BubbleSort
  def sort(array)
    array.length.times do 
      array.length.pred.times do |i|
        array[i], array[i+1] = array[i+1], array[i] if array[i+1] < array[i]
      end
    end
    array
  end
end

array = [1, 3, 5, 2, 8]
b = BubbleSort.new 
b.sort(array) # => [1, 2, 3, 5, 8]