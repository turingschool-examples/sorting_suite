require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_can_instantiate_bubble_sort
    sorter = BubbleSort.new
    assert_instance_of BubbleSort, sorter
  end

  def test_sort_method_returns_sorted_array
    sorter = BubbleSort.new
    expected = sorter.sort(['d', 'b', 'a', 'c'])
    actual = ['a', 'b', 'c', 'd']
    assert_equal actual, expected
  end

end
