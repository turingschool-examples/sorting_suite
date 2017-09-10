require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleTest < Minitest::Test

  def test_bubble_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_swap_letters
    sorter = BubbleSort.new
    actual = sorter.swap_letters(["d", "b", "a", "c"], "d", 0)
    expected = ["b", "d"]

    assert_equal expected, actual
  end

  def test_check_count
    sorter = BubbleSort.new
    actual = sorter.check_count(["b", "d", "a", "c"])
    expected = ["a", "b", "c", "d"]

    assert_equal expected, actual
  end

  def test_sort
    sorter = BubbleSort.new
    actual = sorter.sort(["d", "b", "a", "c"])

    assert_equal ['a', 'b', 'c', 'd'], actual
  end

end
