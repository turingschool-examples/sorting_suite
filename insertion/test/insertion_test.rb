require 'simplecov'
SimpleCov.start

require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion'

class InsertionSortTest < MiniTest::Test

  def test_insert_sort_class_exists
    sorter = InsertionSort.new
    assert sorter
  end

  def test_it_can_hold_an_argument
    skip
    sorter = InsertionSort.new
    expected_numbers = [1,0,4,3,2]
    assert_equal expected_numbers, sorter.insert(expected_numbers)
  end

  def test_it_can_sort_numbers
    sorter = InsertionSort.new
    given_numbers = [1,0,4,3,2]
    expected_numbers = [0, 1, 2, 3, 4]
    assert_equal expected_numbers, sorter.insert(given_numbers)
  end

  def test_it_can_sort_words
    sorter = InsertionSort.new
    given_letters = ["d", "b", "a", "c"]
    expected_letters = ["a", "b", "c", "d"]
    assert_equal expected_letters, sorter.insert(given_letters)
  end

end
