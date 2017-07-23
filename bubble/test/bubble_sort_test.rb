require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './bubble/lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_it_can_sort_two_numbers
    bs = BubbleSort.new([3,1])

    bs.bubble

    assert_equal [1,3], bs.array
  end

  def test_it_can_leave_sorted_numbers_alone
    bs = BubbleSort.new([3,4])

    bs.bubble

    assert_equal [3,4], bs.array
  end

  def test_it_can_bubble_sort
    bs = BubbleSort.new([3,1,4,2,0])

    bs.bubble

    assert_equal [0,1,2,3,4], bs.array
  end

end
