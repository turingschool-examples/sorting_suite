require 'minitest/autorun'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_existence_of_class
    assert_instance_of InsertionSort, InsertionSort.new
  end

end