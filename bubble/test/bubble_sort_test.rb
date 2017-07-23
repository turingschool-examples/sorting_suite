require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'
require 'pry'

class BubbleSortTest < Minitest::Test
  def test_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_it_can_sort
    sorter = BubbleSort.new
    actual = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], actual
  end
end
