require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_it_sorts_a_sequence
    skip
    sorter = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_the_post_sequence_starts_as_an_empty_array
    sorter = InsertionSort.new

    assert_equal [], sorter.post
  end

  def test_it_adds_first_element_of_a_collection_to_post_sequence
    sorter = InsertionSort.new
    sorter.insert_first([1,0,4,3,2])

    assert_equal [1], sorter.post
  end

  def test_insert_first_removes_first_element_of_a_collection
    sorter = InsertionSort.new

    assert_equal [0,4,3,2], sorter.insert_first([1,0,4,3,2])
  end

  def test_it_inserts_first_element_in_correct_order_in_post_sequence
    skip
    sorter = InsertionSort.new
    sorter.insert_first([1,0,4,3,2])
  end
end
