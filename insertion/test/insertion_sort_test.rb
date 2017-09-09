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


end
