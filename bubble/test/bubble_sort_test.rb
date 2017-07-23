require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './bubble/lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_it_can_sort_two_numbers
    sorter = BubbleSort.new

    sorter.sort([3,1])

    assert_equal [1,3], sorter.array
  end

  def test_it_can_leave_sorted_numbers_alone
    sorter = BubbleSort.new

    sorter.sort([3,4])

    assert_equal [3,4], sorter.array
  end

  def test_it_can_bubble_sort
    sorter = BubbleSort.new

    sorter.sort([3,1,4,2,0])

    assert_equal [0,1,2,3,4], sorter.array
  end

  def test_it_can_bubble_sort_large_arrays
    sorter = BubbleSort.new

    sorter.sort([6,3,8,0,1,2,4,9,5,7])

    assert_equal [0,1,2,3,4,5,6,7,8,9], sorter.array
  end

  def test_it_can_sort_letters
    sorter = BubbleSort.new

    sorter.sort(["a", "e", "d", "b", "c"])

    assert_equal (["a", "b", "c", "d", "e"]), sorter.array
  end

end
