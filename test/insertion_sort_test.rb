require './lib/insertion_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'


class InsertionSortTest < Minitest::Test
  include InsertionSort
  def test_insert_pushes_first_element_to_first_location
    unsorted = [3, 5, 0]

    sorted = insertion_sort(unsorted)
    assert_equal 0, sorted[0]
  end

  def test_sort_using_letters
    sorted1 = insertion_sort(["d", "b", "a", "c"])
    sorted2 = insertion_sort(["d", "a", "c", "b"])
    sorted3 = insertion_sort(["d", "c", "b", "a"])

    expected = ["a", "b", "c", "d"]

    assert_equal expected, sorted1
    assert_equal expected, sorted2
    assert_equal expected, sorted3
  end

  def test_sort_using_numbers
    number_array = [3, 5, 1, 7, 10]
    number_array2 = [5, 3, 1, 10, 7]
    number_array3 = [31, 50, 1, 70, 100000]

    assert_equal [1, 3, 5, 7, 10], insertion_sort(number_array)
    assert_equal [1, 3, 5, 7, 10], insertion_sort(number_array2)
    assert_equal [1, 31, 50, 70, 100000], insertion_sort(number_array3)
  end
end
