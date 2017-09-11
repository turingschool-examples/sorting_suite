require 'minitest/autorun'
require "minitest/pride"
require './bubble/lib/bubble_sort'
class BubbleSortTest < Minitest::Test

  def test_that_class_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort , sorter
  end

  def test_sorts_strings_from_lowest_to_highest
    sorter = BubbleSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_sorts_numbers
    sorter = BubbleSort.new
    assert_equal [2, 4, 7, 8, 9, 10], sorter.sort([2,9,7,8,4,10])
  end

  def test_sorts__array_with_duplicates
    sorter = BubbleSort.new
    assert_equal [2, 4, 4, 7, 8, 8,  9, 10], sorter.sort([8,4,2,9,7,8,4,10])
  end

  def test_sorts__array_that_is_already_sorted
    sorter = BubbleSort.new
    assert_equal [1,2,3,4,5], sorter.sort([1,2,3,4,5])
  end

  def test_sorts__array_with_empty_string
    sorter = BubbleSort.new
    assert_equal [" ", "c", "g"], sorter.sort(["g", "c", " "])
  end



end
