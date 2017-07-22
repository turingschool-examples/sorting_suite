require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_bubble_sort_class_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  # def test_sort_method_returns_nil_if_passed_anything_but_array
  #   sorter = BubbleSort.new
  #
  #   tested = sorter.sort("a")
  #
  #   assert_nil tested
  # end

  # def test_count_
  #   skip
  #   sorter = BubbleSort.new
  #
  #   assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])


  def test_sort_method_returns_sorted_array

    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end


end
