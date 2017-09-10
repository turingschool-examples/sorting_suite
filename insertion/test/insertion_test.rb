require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_insertion_sort_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_check_sorted
    sorter = InsertionSort.new
    actual = sorter.check_sorted(["d", "b", "a", "c"])

    assert_equal "d", actual
  end

  def test_check_unsorted_count
    sorter = InsertionSort.new
    actual = sorter.check_unsorted_count(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]

    assert_equal expected, actual
  end

  def test_compare_letters_with_b
    sorter = InsertionSort.new
    unsorted = sorter.check_sorted(["d", "b", "a", "c"])
    actual = sorter.compare_letters(unsorted, "b")
    expected = sorter.sorted

    assert_equal expected, actual
  end

  def test_sort_1
    sorter = InsertionSort.new
    actual = sorter.sort(["c", "b", "a", "d"])
    expected = ["a", "b", "c", "d"]

    assert_equal expected, actual
  end

  def test_sort_2
    sorter = InsertionSort.new
    actual = sorter.sort(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]

    assert_equal expected, actual
  end

  def test_sort_3
    sorter = InsertionSort.new
    actual = sorter.sort(["a", "b", "c", "d"])
    expected = ["a", "b", "c", "d"]

    assert_equal expected, actual
  end

end
