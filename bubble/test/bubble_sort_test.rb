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
    assert_equal ["0", "1", "2", "3", "4", "5"], sorter.sort(["2", "0", "1", "3", "4", "5"])
  end

  def test_if_sort_method_sorts_an_empty_array
    sorter = BubbleSort.new

    assert_equal [], sorter.sort
  end

  def test_if_sort_method_sorts_an_one_element_array
    sorter = BubbleSort.new

    assert_equal ["1"], sorter.sort(["1"])
  end
end
