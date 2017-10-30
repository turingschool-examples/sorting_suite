require './bubble/lib/bubble_sort'
require './insertion/lib/insertion_sort'
require './merge/lib/merge_sort'
require 'benchmark'

# bubble_sort = BubbleSort.new
insertion_sort = InsertionSort.new
merge_sort = MergeSort.new
one_hundred = (0..100).map {|num| num}.shuffle
ten_thousand = (0..10000).map {|num| num}.shuffle
one_hundred_thousand = (0..100000).map {|num| num}.shuffle
ten_million = (0..10000000).map {|num| num}.shuffle

bubble_100 = Benchmark.measure{BubbleSort.sort(one_hundred)}
puts "Bubble Sort, 100 values: #{bubble_100.total} seconds"
insertion_100 = Benchmark.measure{insertion_sort.sort(one_hundred)}
puts "Insertion Sort, 100 values: #{insertion_100.total} seconds"
merge_100 = Benchmark.measure{merge_sort.sort(one_hundred)}
puts "Merge Sort, 100 values: #{merge_100.total} seconds"
print "Press Enter to see 10,000 values comparision"
gets

bubble_10000 = Benchmark.measure{BubbleSort.sort(ten_thousand)}
puts "Bubble Sort, 10,000 values: #{bubble_10000.total} seconds"
insertion_10000 = Benchmark.measure{insertion_sort.sort(ten_thousand)}
puts "Insertion Sort, 10,000 values: #{insertion_10000.total} seconds"
merge_10000 = Benchmark.measure{merge_sort.sort(ten_thousand)}
puts "Merge Sort, 10,000 values: #{merge_10000.total} seconds"
print "Press Enter to see Merge Sort 10,000,000 values"
gets

merge_10000000 = Benchmark.measure{merge_sort.sort(ten_million)}
puts "Merge Sort, 10,000,000 values: #{merge_10000000.total} seconds"
