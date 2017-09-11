class InsertionSort
  
  def sort(array)
    if !array.kind_of?(Array) || array.length == 0
      return 'error'
    end
    
    for i in 1...array.length 
      j = i
      while j > 0
        if array[j-1] > array[j]
          array[j], array[j-1] = array[j-1], array[j]
        end
        j = j - 1
      end
    end
    array
  end
end