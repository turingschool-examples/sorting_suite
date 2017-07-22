require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test

  def test_it_exists
    sorter = MergeSort.new
    assert_instance_of MergeSort, sorter
  end

  def test_it_can_sort_array
    sorter = MergeSort.new
    array = [1,0,4,3]

    assert_equal [0,1,2,3,], sorter.sort([1,0,4,3])
  end

  def test_it_can_sort_letters
    skip
    sorter = MergeSort.new
    array = [["d", "b", "a", "c"]]

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_it_can_sort_negative_numbers
    skip
    sorter = MergeSort.new
    array = [3, -1, 2, 0, -2, 1]

    assert_equal [-2, -1, 0, 1, 2, 3], sorter.sort([3, -1, 2, 0, -2, 1])
  end

  def test_it_can_sort_if_numbers_are_skipped
    skip
    sorter = MergeSort.new
    array = [2, 5, 0, 1, 7, 4]

    assert_equal [0, 1, 2, 4, 5, 7], sorter.sort([2, 5, 0, 1, 7, 4])
  end

end
