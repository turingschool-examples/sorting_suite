gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merge_sort'

class TestMergeSort < Minitest::Test

  def test_it_exists
    merge_sort = MergeSort.new

    assert_instance_of MergeSort, merge_sort
  end

  def test_sort_two_object_array
    merge_sort = MergeSort.new

    assert_equal [1, 2], merge_sort.sort_two([2, 1])
    assert_equal [1, 2], merge_sort.sort_two([1, 2])
  end

end
