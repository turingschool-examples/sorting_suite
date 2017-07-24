require 'pry'

class InsertionSort
# attr_accessor :unsorted, :sorted

  # def start(array)
  #   @unsorted = array
  #   @sorted = []
  #   @sorted << @unsorted[0]
  #   @unsorted.shift
  # end

  def sort(unsorted, i = 0)
    sorted = []
    sorted << unsorted.shift
    until unsorted.empty?
      if unsorted[0] < sorted[0]
        sorted << unsorted.unshift(unsorted[0])
        unsorted[0].delete
      elsif unsorted[0] < sorted[i]
        sorted << unsorted.insert(i, unsorted[0])
      elsif unsorted[0] > sorted.last
        sorted << unsorted[0]
      else
        i+=1
      end
    end
  end

end
