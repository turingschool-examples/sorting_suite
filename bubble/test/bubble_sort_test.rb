require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubleSortTest < Minitest::Test


  def test_BubbleSort_exists
    sorter = BubbleSort.new(["d", "b", "a", "c"])

    assert_instance_of BubbleSort, sorter
  end

  def test_it_sorts_two_things
    sorter = BubbleSort.new(["d", "b"])
    result = sorter.bubble_sort

    assert_equal ["b", "d"], result
  end

  def test_sorts_more_than_two_things
    sorter = BubbleSort.new(["d", "b", "a", "c"])
    result = sorter.bubble_sort

    assert_equal ["a", "b", "c", "d"], result
  end


end
