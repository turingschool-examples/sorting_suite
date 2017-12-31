require './insertion/lib/insertion_sort'
require 'minitest/autorun'
require 'minitest/pride'

class InsertionSortTest < Minitest::Test

  def test_if_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_if_first_element_of_unsorted_pulled_out
    sorter = InsertionSort.new
    result = sorter.pull_element_from_unsorted(["m", "k", "a", "z"])

    assert_equal "m", result
    refute_equal "k", result
  end

  def test_if_it_sorts_numbers_correctly
    sorter = InsertionSort.new
    result = sorter.sort([8, 7, 6, 5, 4, 3, 2, 1])

    assert_equal [1, 2, 3, 4, 5, 6, 7, 8], result
  end

  def test_if_it_sorts_more_numbers_correctly
    sorter = InsertionSort.new
    result = sorter.sort([6, 4, 22, 8, 99, 5, 1, 18, 35, 11, 47])

    assert_equal [1, 4, 5, 6, 8, 11, 18, 22, 35, 47, 99], result
  end

  def test_if_it_sorts_alphabets_correctly
    sorter = InsertionSort.new
    result = sorter.sort(["d", "a", "l", "b"])

    assert_equal ["a", "b", "d", "l"], result
  end

end
