require 'benchmark'
# require 'pry'
require './lib/sorting_suite'

class SortingSuiteBenchmark
  def benchmark_bubble_sort(array)
    Benchmark.realtime { SortingSuite.new.bubble_sort(array) }
  end

  def benchmark_insertion_sort(array)
    Benchmark.realtime { SortingSuite.new.insertion_sort(array) }
  end

  def benchmark_merge_sort(array)
    Benchmark.realtime { SortingSuite.new.merge_sort(array) }
  end

  def time(sorting_algorithm, array)
    if sorting_algorithm == 'Merge'
      time = benchmark_merge_sort(array)
      "Merge sort took #{time} seconds"
    elsif sorting_algorithm == 'Insertion'
      time = benchmark_insertion_sort(array)
      "Insertion sort took #{time} seconds"
    elsif sorting_algorithm == 'Bubble'
      time = benchmark_bubble_sort(array)
      "Bubble sort took #{time} seconds"
    end
  end

  def get_times(array)
    bub_result = benchmark_bubble_sort(array)
    ins_result = benchmark_insertion_sort(array)
    mer_result = benchmark_merge_sort(array)
    results = []
    algorithms = []
    results << bub_result << ins_result << mer_result
    algorithms << "Bubblesort" << "Insertion Sort" << "Merge Sort"
    Hash[algorithms.zip(results)]
  end

  def fastest(array)
    results = get_times(array)
    fastest = results.key(results.values.min)
    "#{fastest} is the fastest."
  end

  def slowest(array)
    results = get_times(array)
    fastest = results.key(results.values.max)
    "#{fastest} is the slowest."
  end
end

array = []
4000.times {array << rand(1...5000)}

# puts SortingSuiteBenchmark.new.fastest(array)
# puts SortingSuiteBenchmark.new.slowest(array)
# puts SortingSuiteBenchmark.new.time('Insertion', array)
puts SortingSuiteBenchmark.new.time('Merge', array)
# puts SortingSuiteBenchmark.new.time('Bubble', array)
