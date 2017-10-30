require 'minitest/autorun'
require 'minitest/pride'
require './bubble/lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_it_exists
    bs = BubbleSort.new

    assert_instance_of BubbleSort, bs
  end

  def test_it_can_sort
    bs = BubbleSort.new

    value = bs.bubble_sort([5, 2, 9, 7, 1])

    assert_equal [1, 2, 5, 7, 9], value
  end
end
