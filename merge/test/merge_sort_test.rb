require 'minitest/autorun'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test

  def test_class_exist
    assert_instance_of MergeSort, MergeSort.new    
  end

  def test_sort_takes_an_arguement
    sorted = MergeSort.new

    assert_equal [], sorted.sort([])
  end
end