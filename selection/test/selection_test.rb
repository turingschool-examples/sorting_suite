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

  def test_selection_sort_given_second_set
    sorter = SelectionSort.new
    expected = [0, 1, 2, 3, 4]
    test_numbers = [4, 0, 2, 3, 1]
    assert_equal expected, sorter.selection(test_numbers)
  end

  def test_it_sorts_with_integers
    sorter = SelectionSort.new
    assert_equal [1,1,2,3,4,5],sorter.selection([4,3,2,1,5,1])
  end

  def test_it_sorts_with_lots_of_integers_in_reverse
    sorter = SelectionSort.new
    assert_equal (0..100).to_a + [100], sorter.selection((0..100).to_a.reverse + [100])
  end



end
