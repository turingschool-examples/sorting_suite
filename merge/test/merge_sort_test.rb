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

  def test_sort_returns_sorted_answer
    sorted = MergeSort.new

    assert_equal [0, 1, 2, 3], sorted.sort([2, 0, 1, 3])
  end
end