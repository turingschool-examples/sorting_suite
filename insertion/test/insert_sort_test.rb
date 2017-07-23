gem 'minitest'
require './lib/insert_sort'
require'minitest/autorun'
require 'minitest/pride'
require 'pry'

class InsertSortTest < Minitest::Test

  # def test_it_takes_an_array
  #   sorter = InsertSort.new([5,6,7])
  #   assert_equal [5,6,7], sorter.unsorted
  # end
  #
  # def test_it_sends_values_to_sorted
  #   sorter = InsertSort.new([4,3,2,1])
  #   assert_equal [4], sorter.send_first_element_into_sorted
  # end
  #
  # def test_it_compares_next_element
  #   sorter = InsertSort.new([4,3,2,1])
  #   sorter.send_first_element_into_sorted
  #
  #   assert_equal [3,4], sorter.initial_greater_than_less_than
  # end

  def test_it_sorts
    sorter = InsertSort.new([5, 8, 10, 13, 1, 56, 2])
    assert_equal [1, 2, 5, 8, 10, 13, 56],sorter.sort

    sorter = InsertSort.new(['h', 'e', 'b', 'g', 'd', 'f', 'a'])
    assert_equal ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'], sorter.sort

    sorter = InsertSort.new([-1, 4, 7, -6, 3])
    assert_equal [-6, -1, 3, 4, 7], sorter.sort

    sorter = sorter = InsertSort.new(["c", "d", "b", "a"])
    assert_equal ["a", "b", "c", "d"], sorter.sort

  end
end
