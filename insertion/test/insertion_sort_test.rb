require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort.rb'


class InsertionSortTest < Minitest::Test

  def test_exists
    insertion = InsertionSort.new

    assert_instance_of InsertionSort, insertion
  end

  def test_can_sort_insertion_letters
    insertion = InsertionSort.new
    array = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], insertion.sort(array)
  end

  def test_can_sort_numbers
    insertion = InsertionSort.new
    numbers = [4, 2, 1, 5, 3]

    assert_equal numbers, insertion.sort(numbers)
  end

  def test_can_sort_neg_numbers
    insertion = InsertionSort.new
    numbers = [-4, -2, -1, -5, -3]

    assert_equal numbers, insertion.sort(numbers)

  end

end
