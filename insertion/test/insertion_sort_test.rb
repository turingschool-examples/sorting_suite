require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  attr_reader :sorter

  def setup
    @sorter = InsertionSort.new
  end

  def test_its_a_thing
    assert_instance_of InsertionSort, sorter
  end

  def test_it_can_sort
    actual   = sorter.sorter(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]
    assert_equal expected, actual
  end

  def test_it_can_sort_mixed_letter
    actual   = sorter.sorter(["d", "B", "a", "c"])
    expected = ["B", "a", "c", "d"]
    assert_equal expected, actual
  end

  def test_it_can_sort_numbers
    actual   = sorter.sorter([4,2,1,3])
    expected = [1,2,3,4]
    assert_equal expected, actual
  end
end
