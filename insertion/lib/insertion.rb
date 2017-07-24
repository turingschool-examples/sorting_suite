require 'pry'
class InsertionSort
  def sort(array)
    array.each_with_index do |element, i|
      current = i - 1
      while current >= 0
        break if array[current] <= element
        array[current+1] = array[current]
        current -= 1
      end
      array[current + 1] = element
    end
    array
  end
end
sorter = InsertionSort.new
p sorter.sort(["d", "b", "a", "c"])
