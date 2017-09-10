gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/insertion_sort'

class TestInsertionSort < Minitest::Test

  def test_it_exists
    insertion = InsertionSort.new

    assert_instance_of InsertionSort, insertion
  end

  def test_insert_sorted_value_places_to_insert_in_sorted_array
    insertion = InsertionSort.new

    assert_equal [1, 2], insertion.insert_sorted_value([2], 1)
    assert_equal [1, 2], insertion.insert_sorted_value([1], 2)
    assert_equal [1, 2, 3, 4, 5], insertion.insert_sorted_value([1, 2, 4, 5], 3)
  end

  def test_sort_sorts_unsorted_array
    insertion = InsertionSort.new

    assert_equal [1, 2, 3, 4], insertion.sort([4, 2, 1, 3])
  end

end
