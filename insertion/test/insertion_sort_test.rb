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

  def test_insert_entry_inputs_entry_accordingly_into_sorted_array
    actual = @sorter.insert_entry("b", ["a", "c"])
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

  def test_inplace_sort_sorts_letters_in_array_of_four_letters
    array = [0, 1, 2, 3, 4]
    actual = InsertionSort.new(array).inplace_sort
    expected = [0, 1, 2, 3, 4]

    assert_equal expected, actual
  end

  def test_inplace_sort_does_not_create_a_new_array
    array = [4, 0, 2, 3, 1]
    actual = InsertionSort.new(array).inplace_sort.object_id
    expected = array.object_id

    assert_equal expected, actual
  end

end
