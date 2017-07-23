require './lib/merge_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class MergeSortTest < Minitest::Test
  def test_sort_using_letters
    sorter = MergeSort.new
    sorted1 = sorter.sort(["d", "b", "a", "c"])
    sorted2 = sorter.sort(["d", "a", "c", "b"])
    sorted3 = sorter.sort(["d", "c", "b", "a"])

    expected = ["a", "b", "c", "d"]

    assert_equal expected, sorted1
    assert_equal expected, sorted2
    assert_equal expected, sorted3
  end

  def test_sort_using_numbers
    sorter = MergeSort.new
    number_array = [3, 5, 1, 7, 10]
    number_array2 = [5, 3, 1, 10, 7]
    number_array3 = [31, 50, 1, 70, 100000]

    assert_equal [1, 3, 5, 7, 10], sorter.sort(number_array)
    assert_equal [1, 3, 5, 7, 10], sorter.sort(number_array2)
    assert_equal [1, 31, 50, 70, 100000], sorter.sort(number_array3)
  end

  def test_with_50_numbers
    array = []
    50.times {array << rand(1..50)}
    sorter = MergeSort.new

    assert_equal array.sort, sorter.sort(array)
  end

  def test_with_500_numbers
    array = []
    500.times {array << rand(1..500)}
    sorter = MergeSort.new

    assert_equal array.sort, sorter.sort(array)
  end

  def test_with_1000_numbers
    array = []
    1000.times {array << rand(1..1000)}
    sorter = MergeSort.new

    assert_equal array.sort, sorter.sort(array)
  end
end
