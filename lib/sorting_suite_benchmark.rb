require 'benchmark'
# require 'pry'
# require './lib/sorting_suite'

class SortingSuiteBenchmark

  def benchmark_bubble_sort(array)
    time = Benchmark.realtime { SortingSuite.new.bubble_sort(array) }
    "Bubble sort took #{time} seconds"
  end

  def benchmark_insertion_sort(array)
    Benchmark.realtime { SortingSuite.new.insertion_sort(array) }
    "Insertion sort took #{time} seconds"
  end

  def benchmark_merge_sort(array)
    Benchmark.realtime { SortingSuite.new.merge_sort(array) }

  end

  def time(sorting_algorithm, array)
    if sorting_algorithm == 'Merge'
      benchmark_merge_sort(array)

      "Merge sort took #{time} seconds"
    elsif sorting_algorithm == 'Insertion'
      benchmark_insertion_sort(array)

      "Merge sort took #{time} seconds"
    elsif sorting_algorithm == 'Bubble'
      benchmark_bubble_sort(array)

  end

  def fastest(array)
    benchmark_bubble_sort(array)
    benchmark_insertion_sort(array)
    benchmark_merge_sort(array)
  end
end
