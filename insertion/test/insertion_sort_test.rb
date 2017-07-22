require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_it_exits
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_can_sort_array
    sorter = InsertionSort.new
    array = [1,0,4,3,2]

    assert_equal [0,1,2,3,4], sorter.sort([1,0,4,3,2])
  end

  def test_it_can_sort_letters
    sorter = InsertionSort.new
    array = [["d", "b", "a", "c"]]

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end
end
