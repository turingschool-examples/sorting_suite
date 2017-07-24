require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './insertion/lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_it_can_sort_two_numbers
    sorter = InsertionSort.new

    sorter.sort([2,0])

    assert_equal [0,2], sorter.sorted
  end

  def test_it_can_leave_sorted_numbers_alone
    sorter = InsertionSort.new

    sorter.sort([3,4])

    assert_equal [3,4], sorter.sorted
  end

  def test_unsorted_is_empty
    sorter = InsertionSort.new

    sorter.sort([3,4])

    assert_equal [], sorter.unsorted
  end

  def test_it_can_sort_jumbled_numbers
    sorter = InsertionSort.new

    sorter.sort([2,0,4,3,5])

    assert_equal [0,2,3,4,5], sorter.sorted
  end

  def test_it_can_sort_alot_of_numbers
    sorter = InsertionSort.new

    sorter.sort([1,5,2,3,6,9,4,7,0,8])

    assert_equal [0,1,2,3,4,5,6,7,8,9], sorter.sorted
  end

  def test_it_can_sort_same_numbers
    sorter = InsertionSort.new

    sorter.sort([2,2,2,5,0,1])

    assert_equal [0,1,2,2,2,5], sorter.sorted
  end

  def test_it_can_sort_letters
    sorter = InsertionSort.new

    sorter.sort (["e", "a", "c", "b", "d"])

    assert_equal (["a", "b", "c", "d", "e"]), sorter.sorted
  end

end
