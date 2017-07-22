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

end
