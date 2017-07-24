require 'pry'
require 'benchmark'

class SelectionSort

  def selection(array)
    sorted_array = []
    until array.length == 0 do
      sorted_array << sort_pass(array)
    end
    sorted_array
  end

  def sort_pass(array)
    min = array[0]
    min_index = 0
    array.each_index do |i|
      if array[i] < min
        min = array[i]
        min_index = i
      end
    end
    array.slice!(min_index)
  end

end

time = Benchmark.measure do
  sorter = SelectionSort.new
  # p sorter.merge(%w(b d f m z t r q o p w c e f j u l x n))
  # p sorter.merge(('a'..'z').to_a.shuffle)
  p sorter.selection((0..100).to_a.shuffle)
end
puts time
