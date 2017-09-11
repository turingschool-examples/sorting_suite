require './lib/bubble_sort'
require 'minitest/autorun'
require 'minitest/pride'

class BubbleSortTest < Minitest::Test

  def test_it_initializes_with_instance_of_bubble_sort
    assert_instance_of BubbleSort, BubbleSort.new
  end

  def test_it_can_swap_unordered_values
    sorter = BubbleSort.new

    assert_equal [1,2], sorter.sort([2,1])
  end

  def test_it_can_swap_unordered_letters
    sorter = BubbleSort.new

    assert_equal ['c','d'], sorter.sort(['d','c'])
  end

  def test_sort_creates_array_of_sorted_numbers_least_to_greatest
    sorter = BubbleSort.new
    assert_equal [1,3,5], sorter.sort([3,1,5])
  end

  def test_sort_creates_array_of_sorted_letters_least_to_greatest
    sorter = BubbleSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

end
