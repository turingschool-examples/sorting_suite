require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'


class BubbleSortTest < Minitest::Test

  def test_exists
    b = BubbleSort.new


    assert_instance_of BubbleSort, b
  end

  def test_can_sort
    b = BubbleSort.new
    array = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], b.sort(array)
  end
  
end
