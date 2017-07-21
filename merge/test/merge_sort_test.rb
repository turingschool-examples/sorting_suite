require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge_sort.rb'

class MergeSortTest < Minitest::Test

  def test_merge_exists
    merge = MergeSort.new

    assert_instance_of MergeSort, merge
  end






end
