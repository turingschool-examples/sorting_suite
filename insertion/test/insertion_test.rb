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
    sorter = InsertionSort.new
    expected_numbers = [1,0,4,3,2]
    assert_equal expected_numbers, sorter.insert(expected_numbers)
  end

end
