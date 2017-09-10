gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/insertion_sort'

class TestInsertionSort < Minitest::Test

  def test_it_exists
    insertion = InsertionSort.new

    assert_instance_of InsertionSort, insertion
  end

  def test_insert_new_places_to_insert_in_sorted_array
    insertion = InsertionSort.new

    assert_equal [1, 2], insertion.insert_new(1, [2])
    assert_equal [1, 2], insertion.insert_new(2, [1])
  end

  def test_sort_takes_unsorted_array
    insertion = InsertionSort.new

    assert_equal ["d", "b", "a", "c"], insertion.sort(["d", "b", "a", "c"])
  end

end
