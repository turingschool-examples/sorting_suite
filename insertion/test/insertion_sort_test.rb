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
end
