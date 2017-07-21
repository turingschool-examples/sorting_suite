require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge_sort.rb'

class MergeSortTest < Minitest::Test

  def test_merge_exists
    merge = MergeSort.new

    assert_instance_of MergeSort, merge
  end

  def test_merge_can_sort
    merge = MergeSort.new
    array = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], merge.sort(array)
  end

  def test_can_sort_numbers
    merge = MergeSort.new
    numbers = [4, 2, 1, 5, 3]
    actual = [1, 2, 3, 4, 5]

    assert_equal actual, merge.sort(numbers)
  end

  def test_can_sort_neg_numbers
    merge = MergeSort.new
    numbers = [-4, -2, -1, -5, -3]
    actual = [-5, -4, -3, -2, -1]

    assert_equal actual, merge.sort(numbers)
  end

end
