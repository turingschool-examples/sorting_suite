gem 'minitest'
require './lib/insert_sort'
require'minitest/autorun'
require 'minitest/pride'
require 'pry'

class InsertSortTest < Minitest::Test

  def test_it_takes_an_array
    sorter = InsertSort.new([5,6,7])
    assert_equal [5,6,7], sorter.unsorted
  end

  def test_it_sends_values_to_sorted
        sorter = InsertSort.new([4,3,2,1])
        assert_equal [4], sorter.send_first_element_into_sorted
  end
end
