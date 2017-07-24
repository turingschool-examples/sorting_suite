require 'pry'

class InsertionSort

  def sort(unsorted, i = 0)
    sorted = []
    sorted << unsorted.shift
    until unsorted.empty?
      if unsorted[0] < sorted[0]
        sorted.unshift(unsorted[0])
        unsorted.delete(unsorted[0])
      elsif unsorted[0] > sorted.last
        sorted << unsorted[0]
        unsorted.delete(unsorted[0])
      elsif unsorted[0] < sorted[i]
        sorted.insert(i, unsorted[0])
        unsorted.delete(unsorted[0])
      else
        i+=1
      end
    end
    sorted
  end

end
