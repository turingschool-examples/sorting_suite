require "minitest/autorun"
require "minitest/emoji"
require "./lib/merge_sort"
require "pry"

class MergeSortTest < Minitest::Test

  def test_merge_sort_exists
    merge = MergeSort.new

    assert_instance_of MergeSort, merge
  end
  

end
