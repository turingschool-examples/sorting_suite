require './bubble/lib/bubble'
require './insertion/lib/insertion'
require './merge/lib/merge'
require 'pry'


time1 = Benchmark.measure do
  sorter = BubbleSort.new
  # p sorter.swaper(["d", "b", "a", "c"])
  p sorter.swaper(('a'..'z').to_a.shuffle)
end
puts time1

time2 = Benchmark.measure do
  sorter = InsertionSort.new
  p sorter.insert(%w(b d f m z t r q o p w c e f j u l x n))
end
puts time2

time3 = Benchmark.measure do
  sorter = MergeSort.new
  # p sorter.merge(%w(b d f m z t r q o p w c e f j u l x n))
  # p sorter.merge(('a'..'z').to_a.shuffle)
  p sorter.merge((0..100).to_a.shuffle)
end
puts time3
