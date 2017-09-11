gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/selection_sort'

class TestSelectionSort < Minitest::Test

  def test_it_exists
    selection = SelectionSort.new

    assert_instance_of SelectionSort, selection
  end

  def test_lowest_gets_lowest_value
    selection = SelectionSort.new

    assert_equal [1], selection.lowest([1, 2], [])
  end

  def test_selection_sort_sorts
    selection = SelectionSort.new

    assert_equal [1, 2, 3, 4], selection.selection_sort([4, 2, 1, 3])
  end

end
