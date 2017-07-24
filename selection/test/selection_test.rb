require 'simplecov'
SimpleCov.start

require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './selection/lib/selection'

class SelectionSortTest < MiniTest::Test

  def test_it_exists
    sorter = SelectionSort.new
    assert sorter
  end

  def test_selection_sort_given
    sorter = SelectionSort.new
    expected = [1, 2, 3]
    test_numbers = [3, 2, 1]
    assert_equal expected, sorter.selection(test_numbers)
  end



end
