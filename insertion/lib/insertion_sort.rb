require 'pry'

class InsertionSort

  attr_reader :unsorted,
              :sorted

  def initialize
  end

  def sort(array)
    @unsorted = array
    @sorted = []
    index = 0
    @sorted.insert(0, @unsorted[0])
    @unsorted.shift
    while unsorted[0] != nil
      if sorted[index] != nil
        if unsorted[0] < sorted[index]
          @sorted.insert(index, unsorted[0])
          @unsorted.shift
          index = 0
        else
          index += 1
        end
      else
        @sorted.push(unsorted[0])
        @unsorted.shift
        index = 0
      end
    end
    #     if unsorted[0] < sorted[index]
    #       @sorted.insert(index, unsorted[0])
    #       @unsorted.delete(unsorted[0])
    #       index = 0
    #     elsif unsorted[0] > sorted[index]
    #       index += 1
    #     end
  end

end
