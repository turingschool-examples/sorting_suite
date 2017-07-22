require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_it_exists
    sorter = BubbleSort.new
    assert_instance_of BubbleSort, sorter
  end

  def test_it_can_sort
    sorter = BubbleSort.new
    letters = ["d", "b", "a", "c"]
    assert_equal ["a","b","c","d"], sorter.sorted(letters)
  end

  def test_it_can_sort_others
    sorter = BubbleSort.new
    numbers = [3,6,2,8,1,5]
    assert_equal [1,2,3,5,6,8], sorter.sorted(numbers)
  end

  def test_it_can_sort_up_and_downcase
    sorter = BubbleSort.new
    letters = ["d", "b", "a", "C"]
    assert_equal ["C","a","b","d"], sorter.sorted(letters)
  end
end
