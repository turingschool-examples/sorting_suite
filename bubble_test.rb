require "minitest"
require "minitest/autorun"
require "./lib/bubble_sort.rb"



class SorterTest < Minitest::Test

  def test_it_exists
    sorter = BubbleSort.new
    assert_instance_of BubbleSort, sorter
  end

  def test_it_can_sort_numbers
    sorter = BubbleSort.new
    assert_equal [1, 2, 3, 4, 5], sorter.sort([2, 4, 3, 1, 5])
  end

  def test_it_can_sort_letters
    sorter = BubbleSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["b", "a", "d", "c"])
  end

end
