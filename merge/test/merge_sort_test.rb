require './merge/lib/merge_sort'
require 'minitest/autorun'
require 'minitest/emoji'

class MergeSortTest < Minitest::Test

  def setup
    @ms = MergeSort.new
  end

  def test_it_exists
    assert_instance_of MergeSort, @ms
  end

end
