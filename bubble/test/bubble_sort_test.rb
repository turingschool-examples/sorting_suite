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

  def test_its_last_element_is_always_working
    bs = BubbleSort.new

    assert_equal "d", bs.sort(["b", "d", "c", "a"]).last
    assert_equal "z", bs.sort(["b", "z", "d", "c", "a", "r", "o", "x", "p", "m"]).last
  end

  def test_it_can_sort_more_mixed_elements
    bs = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], bs.sort(["b", "d", "c", "a"])
  end

  def test_it_can_sort_a_large_number_of_elements
    bs = BubbleSort.new

    sorted = ["a", "b", "c", "d", "m", "o", "p", "r", "x", "z"]
    assert_equal sorted, bs.sort(["b", "z", "d", "c", "a", "r", "o", "x", "p", "m"])
  end

end
