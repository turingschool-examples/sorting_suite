class BubbleSort
  def sort(array)
    return 'error' if !array.kind_of?(Array)
    for i in 0..array.length-1
      for j in 0..array.length-i-1
        next if array[j].nil? || array[j+1].nil?
        if array[j] > array[j+1]
          array[j], array[j+1] = array[j+1], array[j]
        end
      end
    end
    array
  end
end