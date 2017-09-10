require 'minitest/autorun'
require 'minitest/emoji'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  attr_reader :sorter

  def setup
    @sorter = InsertionSort.new
  end

  def test_insertion_sort_class_exists
    assert_instance_of InsertionSort, @sorter
  end

  def test_find_point_returns_first_element_of_array_that_is_greater_than_provided_value
    actual = @sorter.find_point("b", ["a", "c"])
    expected = "c"

    assert_equal expected, actual
  end

  def test_insert_inputs_entry_accordingly_into_sorted_array
    actual = @sorter.insert("b", ["a", "c"])
    expected = ["a", "b", "c"]

    assert_equal expected, actual
  end

  def test_sort_sorts_letters_in_array_of_two_letters
    actual = @sorter.sort(["b", "a"])
    expected = ["a", "b"]

    assert_equal expected, actual
  end

  def test_sort_sorts_letters_in_array_of_four_letters
    actual = @sorter.sort(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]

    assert_equal expected, actual
  end
end
