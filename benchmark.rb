require 'bubble_sort'
require 'insertion_sort'
require 'merge_sort'
require 'selection_sort'
require 'pry'

module SortingSuite

  class Benchmark

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
end

random_list = []
100000.times do
  random_list.push(rand(0..1000))
end
