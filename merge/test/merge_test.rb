require 'simplecov'
SimpleCov.start

require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge'

class MergeSortTest < MiniTest::Test

  def test_merge_sort_exists
    sorter = MergeSort.new
    assert sorter
  end

  def test_merge_sort_returns_array
    sorter = MergeSort.new
    assert_kind_of Array, sorter.merge([])
    test_letters = ["d", "b", "a", "c"]
    assert_kind_of Array, sorter.merge(test_letters)
  end

  def test_merge_sort_works_for_given_set
    sorter = MergeSort.new
    expected = ["a", "b", "c", "d"]
    test_letters = ["d", "b", "a", "c"]
    assert_equal expected, sorter.merge(test_letters)
  end

end
