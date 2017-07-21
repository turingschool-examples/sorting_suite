require './bubble/lib/bubble_sort'
require './insertion/lib/insertion_sort'
require './merge/lib/merge_sort'
require './selection/lib/selection_sort'
require 'benchmark'

module SortingSuite

    def timer(sort_name, array)
      start = Time.now
      if sort_name == SortingSuite::BubbleSort
        SortingSuite::BubbleSort.new.sort(array)
      elsif sort_name == SortingSuite::InsertionSort
        SortingSuite::InsertionSort.new.sort(array)
      elsif sort_name == SortingSuite::MergeSort
        SortingSuite::MergeSort.new.sort(array)
      elsif sort_name == SortingSuite::SelectionSort
        SortingSuite::SelectionSort.new.sort(array)
      end
      final = Time.new
      return final - start
    end

    def time(sort_name, array)
      puts "#{sort_name} took #{timer(sort_name, array)} seconds"
    end

    def compare(array)
      times = {}
      times["BubbleSort"]    = timer(SortingSuite::BubbleSort, array)
      times["InsertionSort"] = timer(SortingSuite::InsertionSort, array)
      times["MergeSort"]     = timer(SortingSuite::MergeSort, array)
      times["SelectionSort"] = timer(SortingSuite::SelectionSort, array)
    end

    def faster(array)
      comparisons = compare(array)
      puts "#{comparisons[-1][0]} is the fastest"

    end

    def slowest(array)
      comparisons = compare(array)
      puts "#{comparisons[0][0]} is the slowest"
    end

end



benchmark = SortingSuite.new

benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])

benchmark.time(SortingSuite::MergeSort, (0..100).to_a.shuffle)

benchmark.fastest([2, 8, 1, 0, 5])

benchmark.slowest([1, 2, 3, 4, 5])
