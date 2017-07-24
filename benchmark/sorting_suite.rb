require 'pry'

module SortingSuite
  class BubbleSort
    def sort(array)
      n = array.length
      loop do
        swapped = false
        (n-1).times do |i|
          if array[i] > array[i+1]
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
          end
        end
        break if swapped == false
      end
      array
    end
  end

  class InsertionSort
    def sort(array)
      array.each_with_index do |element, i|
        current = i - 1
        while current >= 0
          break if array[current] <= element
          array[current+1] = array[current]
          current -= 1
        end
        array[current + 1] = element
      end
      array
    end
  end

  class MergeSort
    def sort(array)
      if array.length == 1
        return array
      end

      left_array = []
      right_array = []
      array.each_with_index do |element, index|
        if index < (array.length / 2)
          left_array << element
        else
          right_array << element
        end
      end
      left_array = sort(left_array)
      right_array = sort(right_array)
      merge(left_array, right_array)
    end

    def merge(left_array, right_array)
      result = []
      while !left_array.empty? && !right_array.empty?
        if left_array[0] < right_array[0]
          result << left_array.shift
        else
          result << right_array.shift
        end
      end
      while !left_array.empty?
        result << left_array.shift
      end
      while !right_array.empty?
        result << right_array.shift
      end
      result
    end
  end

  class Benchmark
    def time(sort_method, array)
      start_time = Time.now
      method = sort_method.new
      method.sort(array)
      end_time   = Time.now
      total_time = end_time - start_time
      corrected_total = total_time * 100
      puts "#{sort_method} took #{corrected_total} seconds."
    end

    def fastest(array)
      bubble_sort_speed = test_bubble_sort(array)
      insertion_sort_speed = test_insertion_sort(array)
      merge_sort_speed = test_merge_sort(array)
      if bubble_sort_speed > insertion_sort_speed && merge_sort_speed
        puts "BubbleSort is the fastest"
      elsif insertion_sort_speed > bubble_sort_speed && merge_sort_speed
        puts "InsertionSort is the fastest"
      elsif merge_sort_speed > bubble_sort_speed && insertion_sort_speed
        puts "MergeSort is the fastest"
      end
    end

    def slowest(array)
      bubble_sort_speed = test_bubble_sort(array)
      insertion_sort_speed = test_insertion_sort(array)
      merge_sort_speed = test_merge_sort(array)
      if bubble_sort_speed < insertion_sort_speed && merge_sort_speed
        puts "BubbleSort is the slowest"
      elsif insertion_sort_speed < bubble_sort_speed && merge_sort_speed
        puts "InsertionSort is the slowest"
      elsif merge_sort_speed < bubble_sort_speed && insertion_sort_speed
        puts "MergeSort is the slowest"
      end
    end

    def test_bubble_sort(array)
      bubble_sort = SortingSuite::BubbleSort.new
      bs_start_time = Time.now
      bubble_sort.sort(array)
      bs_end_time = Time.now
      bs_total_time = bs_end_time - bs_start_time
      bs_corrected_total = bs_total_time * 100
    end

    def test_insertion_sort(array)
      insertion_sort = SortingSuite::InsertionSort.new
      is_start_time = Time.now
      insertion_sort.sort(array)
      is_end_time = Time.now
      is_total_time = is_end_time - is_start_time
      is_corrected_total = is_total_time * 100
     end

    def test_merge_sort(array)
      merge_sort = SortingSuite::MergeSort.new
      ms_start_time = Time.now
      merge_sort.sort(array)
      ms_end_time = Time.now
      ms_total_time = ms_end_time - ms_start_time
      ms_corrected_total = ms_total_time * 100
    end
  end
end

benchmark = SortingSuite::Benchmark.new
benchmark.time(SortingSuite::BubbleSort, [3,3,4,5,1])
benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
benchmark.time(SortingSuite::MergeSort, [3,3,4,5,1])

benchmark.fastest([2, 8, 1, 0, 5])
benchmark.slowest([2, 8, 1, 0, 5])
