gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './merge/lib/merge_sort'

class MergeSortTest < Minitest::Test

  def test_merge_sort
    merger = MergeSort.new
    data_set = [2, 0, 1, 3]
    data_set_two = [1, 4, 6, 12, 6757, 123, 45, 75, 43, 12, 0, 323, 234]
    data_set_three = ["d", "b", "a", "c"]

    assert_equal [0, 1, 2, 3], merger.sort(data_set)
    assert_equal data_set_two.sort, merger.sort(data_set_two)
    assert_equal ["a", "b", "c", "d"], merger.sort(data_set_three)
  end

end
