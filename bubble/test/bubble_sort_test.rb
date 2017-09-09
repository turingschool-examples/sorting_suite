require "minitest/autorun"
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_check_if_class_bubble_sort_exist
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_if_sort_method_sorts_an_array
    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end
end
