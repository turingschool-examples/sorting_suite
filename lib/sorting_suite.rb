require './lib/bubblesort'
require './lib/insertion_sort'
require './lib/merge_sort'
require 'benchmark'

class SortingSuite
  include BubbleSort
  include InsertionSort
  include MergeSort
  include Benchmark
end
