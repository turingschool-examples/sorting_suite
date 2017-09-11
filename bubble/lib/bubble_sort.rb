require 'pry'
class Bubblesort

  def initialize

  end

  def sort(array)
    size = array.length

    size.times do |number|
      if array[number] > array[number + 1]
        array[number], array[number + 1] = array[number + 1], array[number]
      end
    end
    array
  end
end

bs = Bubblesort.new
bs.sort(["d", "b", "a", "c"])
