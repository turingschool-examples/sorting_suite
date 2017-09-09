gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort'

class TestBubbleSort < Minitest::Test

  def test_it_exits
    bubble_sort = BubbleSort.new

    assert_instance_of BubbleSort, bubble_sort
  end

  def test_advances_current
    bubble_sort = BubbleSort.new
    current = 0

    assert_equal 1, bubble_sort.adv_current(current)
  end

  def test_advances_previous
    bubble_sort = BubbleSort.new
    previous = 0

    assert_equal 1, bubble_sort.adv_previous(previous)
  end

  def test_swaps_current_and_previous_if_c_is_less_than_p
    bubble_sort = BubbleSort.new
    current = 1
    previous = 0
    array = [2, 1]

    assert_equal [1, 2], bubble_sort.compare_values(previous, current, array)
  end

  def test_does_not_swap_current_and_previous_if_c_is_greater_than_or_equal_to_p
    skip
    bubble_sort = BubbleSort.new
    previous = 0
  end
end
