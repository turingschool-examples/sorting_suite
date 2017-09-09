require 'minitest/autorun'
require "minitest/pride"
require './bubble/lib/bubble_sort'
class BubbleSortTest < Minitest::Test

  def test_that_class_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort , sorter
  end

  def test_swap_reverses_values
      sorter = BubbleSort.new
      expected = "b,a"


      assert_equal expected, sorter.swap!(a,b)
  end

  def test_sorts_strings_from_lowest_to_highest
    sorter = BubbleSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

end
