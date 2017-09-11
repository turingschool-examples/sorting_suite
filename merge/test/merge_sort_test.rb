require 'minitest/autorun'
require "minitest/pride"
require './merge/lib/merge_sort'
class MergeSortTest < Minitest::Test

  def test_merge_sort_exists
    sorter = MergeSort.new

    assert_instance_of MergeSort, sorter
  end

  def test_merge_sorts_string
    sorter = MergeSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end
end
