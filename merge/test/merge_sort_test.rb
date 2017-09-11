require_relative '../../test_helper.rb'
require_relative '../lib/merge_sort.rb'


class MergeSortTest < Minitest::Test
  attr_reader :merge

  def setup 
    @merge = MergeSort.new
  end
  
  def test_merge_exists
    assert merge
    assert_instance_of MergeSort, merge
  end

  def test_sort_ints
    actual   = merge.sort([9, 20, 33, 15, 4, 7, 16, 2])
    expected = [2, 4, 7, 9, 15, 16, 20, 33]

    assert_equal actual, expected
  end

  def test_sort_strings
    actual   = merge.sort(['z', 'd', 'a', 'f', 'b', 'x', 'm', 'j'])
    expected = ['a', 'b', 'd', 'f', 'j', 'm', 'x', 'z']

    assert_equal actual, expected
  end
end