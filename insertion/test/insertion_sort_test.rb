require './lib/insertion'
require 'minitest/autorun'
require 'minitest/pride'



class InsertionSortTest < Minitest::Test
  def test_insert_pushes_first_element_to_first_location
    sorter = InsertionSort.new
    unsorted = [3, 5, 0]
    sorted = sorter.sort(unsorted)

    assert_equal 0, sorted[0]
  end

  def test_sort_using_letters
    skip
    sorter = InsertionSort.new
    letter_array = ["d", "b", "a", "c"]
    letter_array2 = ["d", "a", "c", "b"]
    letter_array3 = ["d", "c", "b", "a"]

    assert_equal ["a", "b", "c", "d"], sorter.sort(letter_array)
    assert_equal ["a", "b", "c", "d"], sorter.sort(letter_array2)
    assert_equal ["a", "b", "c", "d"], sorter.sort(letter_array3)
  end

  def test_sort_using_numbers
    skip
    sorter = InsertionSort.new
    number_array = [3, 5, 1, 7, 10]
    number_array2 = [5, 3, 1, 10, 7]
    number_array3 = [31, 50, 1, 70, 100000]

    assert_equal [1, 3, 5, 7, 10], sorter.sort(number_array)
    assert_equal [1, 3, 5, 7, 10], sorter.sort(number_array2)
    assert_equal [1, 31, 50, 70, 100000], sorter.sort(number_array3)
  end
end
