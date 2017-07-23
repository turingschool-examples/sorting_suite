require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './insertion/lib/insertion_sort'

class InsertionSortTest < Minitest::Test

def test_it_can_pull_numbers_sorted_array

  sorter = InsertionSort.new

  sorter.sort([4,2,0])

  assert_equal sorter.sorted, [4]
  assert_equal sorter.unsorted, [2,0]
end

def test_it_can_decide_where_to_put_elements
  skip
  sorter = InsertionSort.new

  sorter.sort([4,2,0])

  assert_equal [2,4], sorter.sorted
end

end
