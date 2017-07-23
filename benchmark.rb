require 'benchmark'
require './lib/merge_sort'
require './lib/insertion_sort'
require './lib/bubblesort'

benchmark = SortingSuite::Benchmark.new



  benchmark.time(SortingSuite::BubbleSort)

  benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
  # => "InsertionSort took 0.004333 seconds"

  benchmark.time(SortingSuite::MergeSort)
  # => "MergeSort took 0.000274 seconds"

  benchmark.fastest([2, 8, 1, 0, 5])
  # => "MergeSort is the fastest"

  benchmark.slowest([1, 2, 3, 4, 5])
  # => "BubbleSort is the slowest"

# 50.times {array << rand(1..50)}
#
#
# benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
# => "InsertionSort took 0.004333 seconds"
#
# benchmark.time(SortingSuite::MergeSort)
# => "MergeSort took 0.000274 seconds"
#
# benchmark.fastest([2, 8, 1, 0, 5])
# => "MergeSort is the fastest"
#
# benchmark.slowest([1, 2, 3, 4, 5])
# => "BubbleSort is the slowest"
