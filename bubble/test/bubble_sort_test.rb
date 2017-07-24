require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_it_exists
    bubble = BubbleSort.new

    assert_instance_of BubbleSort, bubble
  end

  def test_it_can_sort_array
    sorter = BubbleSort.new
    array = [2, 0, 1, 3, 4, 5]

    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(array)
  end

  def test_it_can_sort_another_array
    sorter = BubbleSort.new
    array = [4, 2, 0, 3, 1]

    assert_equal [0, 1, 2, 3, 4], sorter.sort(array)
  end

  def test_it_can_sort_letters
    sorter = BubbleSort.new
    array = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_it_can_sort_negative_numbers
    sorter = BubbleSort.new
    array = [3, -1, 2, 0, -2, 1]

    assert_equal [-2, -1, 0, 1, 2, 3], sorter.sort([3, -1, 2, 0, -2, 1])
  end

  def test_it_can_sort_if_numbers_are_skipped
    sorter = BubbleSort.new
    array = [2, 5, 0, 1, 7, 4]

    assert_equal [0, 1, 2, 4, 5, 7], sorter.sort([2, 5, 0, 1, 7, 4])
  end

end
