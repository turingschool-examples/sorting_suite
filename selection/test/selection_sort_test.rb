require 'minitest/autorun'
require 'minitest/pride'
require './lib/selection_sort.rb'


class SelectionSortTest < Minitest::Test

  def test_merge_exists
    selection = SelectionSort.new

    assert_instance_of MergeSort, selection
  end

  def test_merge_can_sort
    selection = SelectionSort.new
    array = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], selection.sort(array)
  end

  def test_can_sort_numbers
    selection = SelectionSort.new
    numbers = [4, 2, 1, 5, 3]
    actual = [1, 2, 3, 4, 5]

    assert_equal actual, selection.sort(numbers)
  end

  def test_can_sort_neg_numbers
    selection = SelectionSort.new
    numbers = [-4, -2, -1, -5, -3]
    actual = [-5, -4, -3, -2, -1]

    assert_equal actual, selection.sort(numbers)
  end


end
