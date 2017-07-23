require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './bubble/lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_it_can_sort_two_numbers
    bs = BubbleSort.new

    bs.sort([3,1])

    assert_equal [1,3], bs.array
  end

  def test_it_can_leave_sorted_numbers_alone
    bs = BubbleSort.new

    bs.sort([3,4])

    assert_equal [3,4], bs.array
  end

  def test_it_can_bubble_sort
    bs = BubbleSort.new

    bs.sort([3,1,4,2,0])

    assert_equal [0,1,2,3,4], bs.array
  end

  def test_it_can_bubble_sort_large_arrays
    bs = BubbleSort.new

    bs.sort([6,3,8,0,1,2,4,9,5,7])

    assert_equal [0,1,2,3,4,5,6,7,8,9], bs.array
  end

end
