require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_that_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_sort_takes_argument
    sorter = BubbleSort.new
    sorter.sort(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]

    assert_equal expected, sorter.suite
  end

  def test_sort_can_take_single_array_argument
    sorter = BubbleSort.new

    assert_equal ["a"], sorter.sort(["a"])
  end

  def test_sort_converts_string_suites_to_order
    sorter = BubbleSort.new
    expected = ["a", "b", "c", "d"]

    assert_equal expected, sorter.sort(["d", "b", "a", "c"])
  end

  def test_sort_works_on_integer_suites
    sorter = BubbleSort.new
    expected = [1, 3, 5, 7]

    assert_equal expected, sorter.sort([7, 3, 5, 1])
  end
end
