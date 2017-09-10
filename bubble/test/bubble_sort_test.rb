gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort'

class TestBubbleSort < Minitest::Test

  def test_it_exits
    bubble_sort = BubbleSort.new

    assert_instance_of BubbleSort, bubble_sort
  end

  def test_swaps_current_and_previous
    bubble_sort = BubbleSort.new
    current = 1
    previous = 0
    array = [2, 1]

    assert_equal [1, 2], bubble_sort.compare_values(previous, current, array)
  end

  def test_does_not_swap_current_and_previous
    bubble_sort = BubbleSort.new
    current = 1
    previous = 0
    array = [1, 2]

    assert_equal [1, 2], bubble_sort.compare_values(previous, current, array)
  end

  def test_bubbles_once_through_array
    bubble_sort = BubbleSort.new
    array = [3, 2, 1]

    assert_equal [2, 1, 3], bubble_sort.single_sort(array)
  end

  def test_bubbles_though_array_length_number_of_times
    bubble_sort = BubbleSort.new
    array = [3, 2, 1]

    assert_equal [1, 2, 3], bubble_sort.sort(array)
  end

  def test_sorts_array_of_letters
    sorter = BubbleSort.new

    assert_equal ['a', 'b', 'c', 'd'], sorter.sort(["d", "b", "a", "c"])
  end

end
