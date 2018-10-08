gem 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test
  def test_sorter_exists
    sorter = MergeSort.new

    assert_instance_of MergeSort, sorter
  end

  def test_sorter_can_sort
    sorter = MergeSort.new
    list = (["d", "b", "a", "c"])

    assert_equal (["a", "b", "c", "d"]), sorter.merge_sort(list)
  end

end
