require 'pry'
class InsertionSort
    attr_reader :sorted

  def sort(unsorted, index = 0)
    sorted = [sorted[index]]
    unsorted.delete_at(index)
    loop do
      sorted << unsorted[index]
      index += 1
      sorted << unsorted[index]
      if sorted[index] > unsorted[index + 1]
        sorted[index], sorted[index + 1] =  sorted[index + 1], index[index]
      end
    end
  end
end
