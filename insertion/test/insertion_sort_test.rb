require 'minitest/autorun'
require 'minitest/pride'
require "./lib/insertion_sort"

class InsertionSortTest < MiniTest::Test

  def test_exist?
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end


  def insertion_sort
    sorter = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], sorter.insertion_sort
  end
end
