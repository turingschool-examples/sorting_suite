require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion'
require 'pry'

class InsertionSortTest < Minitest::Test
  def test_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_can_sort
    sorter = InsertionSort.new
    actual = sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], actual
  end

end
