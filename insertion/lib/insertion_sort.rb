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
        sorted.unshift(unsorted[0])
        unsorted.delete(unsorted[0])
      elsif unsorted[0] > sorted.last
        sorted << unsorted[0]
      elsif unsorted[0] < sorted[i]
        sorted.insert(i, unsorted[0])
        unsorted.delete(unsorted[0])
        binding.pry
      else
        i+=1
      end
    end
  end

end
