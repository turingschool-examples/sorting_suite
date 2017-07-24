require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './insertion/lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_it_can_pull_numbers_sorted_array
    skip
    
    sorter = InsertionSort.new

    sorter.sort([4,2,0])

    assert_equal sorter.sorted, [4]
    assert_equal sorter.unsorted, [2,0]
  end

  def test_it_can_sort_descending_numbers
    skip
    sorter = InsertionSort.new

    sorter.sort([4,2,0])

    assert_equal [0,2,4], sorter.sorted
  end

  def test_it_can_sort_jumbled_numbers
    sorter = InsertionSort.new

    sorter.sort([2,0,4,3,5])

    assert_equal [0,2,3,4,5], sorter.sorted
  end

end
