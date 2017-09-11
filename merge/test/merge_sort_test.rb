require 'minitest/autorun'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test

  def test_class_exist
    assert_instance_of MergeSort, MergeSort.new    
  end
end