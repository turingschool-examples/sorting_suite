gem 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_sorter_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_sorter_can_sort
    sorter = InsertionSort.new

    assert_equal (["a", "b", "c", "d"]), sorter.sort
  end

end
