require 'minitest/autorun'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_existence_of_class
    assert_instance_of InsertionSort, InsertionSort.new
  end

  def test_sort_method_takes_an_arguement
    sorted = InsertionSort.new
    argue = []

    assert_equal [], sorted.sort(argue)
  end
end