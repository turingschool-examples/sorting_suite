require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge'
require 'pry'

class MergeSortTest < Minitest::Test
  def test_class_exist
    merge = MergeSort.new
    assert_instance_of MergeSort, merge
  end

  def test_it_can_take_array_as_argument
    merge = MergeSort.new

    array = [2, 0, 1, 3]

    assert_instance_of Array, merge.sort(array)
  end
end
