require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './bubble/lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_instance_of_bs
    bs = BubbleSort.new
    assert bs
    assert_instance_of BubbleSort, bs
  end

  def test_it_can_sort_one_element
    bs = BubbleSort.new
    assert_equal ["a"], bs.sort(["a"])
  end

  def test_it_can_sort_multiple_elements_once_through
    bs = BubbleSort.new
    assert_equal ["a", "b", "c", "d"], bs.sort(["b", "a", "d", "c"])
  end




end
