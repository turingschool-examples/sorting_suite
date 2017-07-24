require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/insertion_sort'

class InsertSortTest < Minitest::Test

  def test_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_sorts_letters
    sorter = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_it_can_sort_numbers
    sorter = InsertionSort.new

    assert_equal [0, 3, 4, 6], sorter.sort([4, 0, 3, 6])
  end
end
