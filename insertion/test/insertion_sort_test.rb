require 'minitest/autorun'
require "minitest/pride"
require './insertion/lib/insertion'
class InsertionSortTest < Minitest::Test

  def test_insertion_class_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_sort_sorts_a_string
    sorter = InsertionSort.new

    assert_equal  ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_sort_sorts_intergers
    sorter = InsertionSort.new

    assert_equal [1,3,5,7,8,9,10], sorter.sort([9,3,5,10,7,8,1])
  end

  def test_sort_sorts_intergers_with_same_values
    sorter = InsertionSort.new

    assert_equal [1,3,3,7,8,9,9], sorter.sort([9,3,9,3,7,8,1])
  end


end
