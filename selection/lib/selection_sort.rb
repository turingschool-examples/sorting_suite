require 'benchmark.rb'
class Selection

  def sort(array)
    new = array.length
    for i in 0...new
      min = i
      for j in (i + 1)...new
        if array[j]<array[min]
          temp = array[j]
          array[j] = array[min]
          array[min] = temp
        end
      end
    end
    return array
  end

end
