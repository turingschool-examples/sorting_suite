require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './insertion/lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_it_can_be_created
    is = InsertionSort.new

    assert is
    assert_instance_of InsertionSort, is
  end

end
