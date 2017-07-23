require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge'
require 'pry'

class MergeSortTest < Minitest::Test
  def test_class_exist
    merge = MergeSort.new

    assert_instance_of MergeSort, merge
  end

  def test_it_can_take_array_as_argument
    merge = MergeSort.new

    array = [2, 0, 1, 3]

    assert_instance_of Array, merge.sort(array)
  end

  def test_it_can_sort_an_array_of_numbers
    merge = MergeSort.new

    array = [2, 0, 1, 3]

    expected = [0, 1, 2, 3]

    assert_equal expected, merge.sort(array)
  end

  def test_it_can_sort_an_array_of_letters
    merge = MergeSort.new

    array = ["d", "b", "a", "c"]

    expected = ["a", "b", "c", "d"]

    assert_equal expected, merge.sort(array)
  end

  def test_it_can_take_more_numbers
    merge = MergeSort.new

    array = [2, 0, 1, 3, 4, 5]

    expected = [0, 1, 2, 3, 4, 5]

    assert_equal expected, merge.sort(array)
  end
end
