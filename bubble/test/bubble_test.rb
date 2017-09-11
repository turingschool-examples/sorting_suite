require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < MiniTest::Test

  def test_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_it_can_sort_first_two_elements
    sorter = BubbleSort.new

    assert_equal [1,2,3,4,5], sorter.sort([2,1,3,4,5])
  end

  def test_it_can_sort_last_two_elements
    sorter = BubbleSort.new

    assert_equal [1,2,3,4,5], sorter.sort([1,2,3,5,4])
  end

  def test_it_can_sort_any_two_elements
    sorter = BubbleSort.new

    assert_equal [1,2,3,4,5], sorter.sort([1,3,2,4,5])
  end

  def test_it_can_sort_multiple_elements
    sorter = BubbleSort.new

    assert_equal [1,2,3,4,5], sorter.sort([4,2,3,1,5])
  end

  def test_it_can_sort_letters
    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["b", "c", "d", "a"])
  end
end
