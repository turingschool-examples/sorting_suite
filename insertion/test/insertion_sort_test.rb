require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort.rb'


class InsertionSortTest < Minitest::Test

  def test_exists
    insertion = InsertionSort.new

    assert_instance_of InsertionSort, insertion
  end

  def test_can_sort_by_insertion
    insertion = InsertionSort.new
    array = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], insertion.sort(array)
  end


end
