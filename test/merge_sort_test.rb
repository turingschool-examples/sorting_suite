require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/merge_sort"

class MergeSortTest < Minitest::Test

  def test_it_exists
    ms = MergeSort.new

    assert_instance_of MergeSort, ms
  end

  def test_sort_returns_array_if_one_element_or_smaller
    ms = MergeSort.new

    assert_equal [], ms.sort([])
    assert_equal [1], ms.sort([1])
    assert_equal [99], ms.sort([99])
    assert_equal ["a"], ms.sort(["a"])
  end

  def test_merge_returns_one_side_if_opposite_side_empty
    ms = MergeSort.new

    assert_equal [10], ms.merge([], [10])
    assert_equal [10,20,30], ms.merge([10,20,30], [])
  end

  def test_merge_merges_two_sorted_arrays
    ms = MergeSort.new

    assert_equal [10,20,30,40], ms.merge([10,20], [30,40])
    assert_equal [1,2,3,4,5], ms.merge([1,2], [3,4,5])
  end

  def test_sort_can_sort_mixed_arrays
    ms = MergeSort.new

    assert_equal [1,2,3,4,5], ms.sort([5,4,3,2,1])
    assert_equal [2, 12, 234, 5678, 7654], ms.sort([234,7654,12,5678,2])
  end

  def test_spec_test
    ms = MergeSort.new

    assert_equal ["a", "b", "c", "d"], ms.sort(["d", "b", "a", "c"])
  end
end
