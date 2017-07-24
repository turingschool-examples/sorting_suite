require './bubble/lib/bubble'
require './insertion/lib/insertion'
require './merge/lib/merge'
require './selection/lib/selection'
require 'colorize'
require 'pry'
puts "##################################################".colorize(:blue)
puts "Below are benchmarks for shuffled numbers for each sorting method in this project.".colorize(:color => :blue, :background => :white)
time1 = Benchmark.measure do
  sorter = BubbleSort.new
  # p sorter.swaper(["d", "b", "a", "c"])
  # p sorter.swaper(('a'..'z').to_a.shuffle)
    p sorter.swaper((0..100).to_a.shuffle)
end
puts "Bubble Sort was this fast: #{time1}".colorize(:red)

time2 = Benchmark.measure do
  sorter = InsertionSort.new
  # p sorter.insert(%w(b d f m z t r q o p w c e f j u l x n))
    p sorter.insert((0..100).to_a.shuffle)
end
puts "Insertion Sort was this fast: #{time2}".colorize(:red)

time3 = Benchmark.measure do
  sorter = MergeSort.new
  # p sorter.merge(%w(b d f m z t r q o p w c e f j u l x n))
  # p sorter.merge(('a'..'z').to_a.shuffle)
  p sorter.merge((0..100).to_a.shuffle)
end
puts "Merge Sort was this fast: #{time3}".colorize(:red)

time4 = Benchmark.measure do
  sorter = SelectionSort.new
  # p sorter.merge(%w(b d f m z t r q o p w c e f j u l x n))
  # p sorter.merge(('a'..'z').to_a.shuffle)
  p sorter.selection((0..100).to_a.shuffle)
end
puts "Selection Sort was this fast: #{time4}".colorize(:red)
