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
    assert_equal [2, 4, 4, 7, 8, 9, 10], sorter.sort([2,4,9,7,8,4,10])
  end

end
