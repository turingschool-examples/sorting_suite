gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './insertion/lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_insertion_sort
    insertion = InsertionSort.new
    data_set = [1,0,4,3,2]
    data_set_two = [5, 6, 8, 2, 5, 7, 9, 13, 54345, 67, 123, 5757, 124, 0, 324, 7, 789]
    data_set_three = ["d", "b", "a", "c"]

    assert_equal [0, 1, 2, 3, 4], insertion.sort(data_set)
    assert_equal data_set_two.sort, insertion.sort(data_set_two)
    assert_equal ["a", "b", "c", "d"], insertion.sort(data_set_three)
  end

end
