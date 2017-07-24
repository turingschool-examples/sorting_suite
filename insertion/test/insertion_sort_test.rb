require 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_can_sort_letters
    sorter = InsertionSort.new
    input = ["R", "F", "D", "P"]
    expected = ["D", "F", "P", "R"]

    assert_equal expected, sorter.sort(input)
  end

  def test_it_can_sort_numbers
    sorter = InsertionSort.new
    input = [10, 4, 8, 3, 5, 7, 909]
    expected = [3, 4, 5, 7, 8, 10, 909]

    assert_equal expected, sorter.sort(input)
  end

end
