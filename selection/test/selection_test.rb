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

  def test_selection_sort_works_for_random_alphabet
    sorter = SelectionSort.new
    expected = ('a'..'z').to_a
    test_letters = expected.shuffle
    assert_equal expected, sorter.selection(test_letters)
  end

  def test_selection_sort_works_for_random_numbers
    sorter = SelectionSort.new
    expected = (0..100).to_a
    test_numbers = expected.shuffle
    assert_equal expected, sorter.selection(test_numbers)
  end

  def test_single_sort_with_integer_array
    sorter = SelectionSort.new
    assert_equal 1, sorter.sort_pass([2,4,6,3,1,5])
  end

  def test_it_does_single_sort_pass_with_string_array
    sorter = SelectionSort.new
    assert_equal "Baratheon", sorter.sort_pass(["Stark","Greyjoy","Martell","Baratheon","Tully", "Tyrell"])
  end



end
