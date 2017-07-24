require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_theres_an_array
    skip
    sorter = BubbleSort.new

    assert_equals ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_it_can_sort_numbers
    sorter = BubbleSort.new

    assert_equal [1, 2, 3, 4], sorter.sort([3, 1, 4, 2])
  end

end
