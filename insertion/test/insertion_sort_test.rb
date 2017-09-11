require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < MiniTest::Test

  def test_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_can_sort_first_two_elements
    sorter = InsertionSort.new

    assert_equal [1,2,3,4,5], sorter.sort([2,1,3,4,5])
  end

  def test_it_can_sort_last_two_elements
    sorter = InsertionSort.new

    assert_equal [1,2,3,4,5], sorter.sort([1,2,3,5,4])
  end

  def test_it_can_sort_any_two_elemets
    sorter = InsertionSort.new

    assert_equal [1,2,3,4,5], sorter.sort([1,2,4,3,5])
  end

  def test_it_can_sort_multiple_elements
    sorter = InsertionSort.new

    assert_equal [1,2,3,4,5], sorter.sort([3,2,1,5,4])
  end
end
