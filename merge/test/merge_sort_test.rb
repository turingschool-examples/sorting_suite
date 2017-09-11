gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merge_sort'

class TestMergeSort < Minitest::Test

  def test_it_exists
    merge = MergeSort.new

    assert_instance_of MergeSort, merge
  end

  def test_merge_sort
    merge = MergeSort.new

    assert_equal [1, 2, 3, 4], merge.merge_sort([2, 1, 4, 3])
    assert_equal ["a", "b", "c", "d"], merge.merge_sort(["d", "b", "a", "c"])
  end

end
