require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './bubble/lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_bubble_class_exists
    bubble = BubbleSort.new

    assert_instance_of BubbleSort, bubble
  end

  def test_bubble_can_sort_two_elements
    bubble = BubbleSort.new

    assert_equal [1, 2], bubble.sort([2, 1])
  end

  def test_can_sort_three_elements
    bubble = BubbleSort.new

    assert_equal [1, 2, 3], bubble.sort([3, 2, 1])
  end

  def test_can_sort_four_letters
    bubble = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], bubble.sort(["d", "b", "a", "c"])
  end
  end
