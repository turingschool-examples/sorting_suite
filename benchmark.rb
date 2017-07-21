require 'bubble_sort'
require 'insertion_sort'
require 'merge_sort'
require 'selection_sort'

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
      elsif sort_name == SortingSuite:SelectionSort
        SortingSuite::SelectionSort.new.sort(array)
      end
      final = Time.new
      return final - start
    end

    def time(sort_name, array)
      puts "#{sort_name} took #{timer(sort_name, array)} seconds"
    end





  end
end
