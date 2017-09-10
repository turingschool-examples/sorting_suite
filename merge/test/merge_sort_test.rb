require 'minitest/autorun'
require "minitest/pride"
require "./lib/merge_sort"

class MergeSortTest < Minitest::Test
  def test_can_instantiate_merge_sort
    merged = MergeSort.new
    assert_instance_of MergeSort, merged
  end

  def test_insertion_sort_returns_correct_array
    merged = MergeSort.new
    expected = merged.sort(['d', 'b', 'a', 'c'])
    actual = ['a', 'b', 'c', 'd']
    assert_equal expected, actual
  end
end
