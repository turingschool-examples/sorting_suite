require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < MiniTest::Test

  def test_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_it_can_sort
    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_it_can_sort_numbers
    sorter = BubbleSort.new

    assert_equal [0, 1, 2], sorter.sort([2, 1, 0])
  end

  def test_it_can_sort_negative_numbers
    sorter = BubbleSort.new

    assert_equal [-1, 5, 6, 9], sorter.sort([6, -1, 5, 9])
  end
end
