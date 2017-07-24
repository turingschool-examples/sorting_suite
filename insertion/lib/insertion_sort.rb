require 'pry'

class InsertionSort
# attr_accessor :unsorted, :sorted

  # def start(array)
  #   @unsorted = array
  #   @sorted = []
  #   @sorted << @unsorted[0]
  #   @unsorted.shift
  # end

  def sort(array)
    sorted = []
    unsorted = array
    sorted << unsorted.shift
    until unsorted.empty?
      if unsorted[0] < sorted[0]
        sorted << unsorted.shift
      elsif sorted.last == nil
        sorted << unsorted[0]
      else
        sorted[i+1]
        unsorted < sorted[i]
        sorted << unsorted.shift
      end
    end
  end

end
