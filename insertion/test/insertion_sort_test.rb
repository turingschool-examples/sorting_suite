require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < MiniTest::Test

  def test_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_can_sort_numbers
    sorter = InsertionSort.new

    assert_equal [0, 1, 2, 3], sorter.sort([2, 3, 0, 1])
  end

  def test_it_can_sort_letters
    sorter = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_it_can_sort_negative_numbers
    sorter = InsertionSort.new

    assert_equal [-2, -1, 0, 1, 2, 3], sorter.sort([2, 3, 0, 1, -2, -1])
  end

end
