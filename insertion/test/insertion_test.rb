require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion'
require 'pry'

class InsertionSortTest < Minitest::Test
  def test_class_exist
    insertion = InsertionSort.new
    assert_instance_of InsertionSort, insertion
  end

  def test_it_can_take_array_as_argument
    insertion = InsertionSort.new

    array = [2, 0, 1, 3, 4, 5]

    assert_instance_of Array, insertion.sort(array)
  end

  def test_it_can_sort_an_array_of_numbers
    insertion = InsertionSort.new

    array = [2, 0, 1, 3, 4, 5]

    expected = [0, 1, 2, 3, 4, 5]

    assert_equal expected, insertion.sort(array)
  end

  def test_it_can_sort_an_array_of_letters
    insertion = InsertionSort.new

    array = ["d", "b", "a", "c"]

    expected = ["a", "b", "c", "d"]

    assert_equal expected, insertion.sort(array)
  end
end
