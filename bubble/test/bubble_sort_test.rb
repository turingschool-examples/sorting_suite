require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_it_can_sort_a_collection
    skip
    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_it_decides_whether_to_swap_two_elements
    sorter = BubbleSort.new
    sorter.sort(["a", "b", "c", "d"])

    refute sorter.swap?
  end
end
