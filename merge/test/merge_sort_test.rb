require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test
  def test_merge_sort_class_exists
    sorter = MergeSort.new
    assert_instance_of MergeSort, sorter
  end

  def test_splits_array_in_half
    sorter = MergeSort.new

    split = sorter.split_array_in_half([1,2,3,4])

    assert_equal [[1,2],[3,4]], split
  end

  def test_splits_odd_array
    sorter = MergeSort.new

    split = sorter.split_array_in_half([1,2,3,4,5])

    assert_equal [[1,2], [3,4,5]], split
  end

  def test_sort_array_of_two
    sorter = MergeSort.new

    sort_two = sorter.swap_places_if_needed([4,3])

    assert_equal [3,4], sort_two
  end

  def test_sort_array_of_one
    sorter = MergeSort.new

    sort_one = sorter.swap_places_if_needed([2])

    assert_equal [2], sort_one
  end

  def test_merge_two_sorted_arrays
    sorter = MergeSort.new

    merge = sorter.merge_sorted_arrays([1,3], [2,4])

    assert_equal [1,2,3,4], merge
  end

  def test_merge_bigger_arrays
    sorter = MergeSort.new

    merge = sorter.merge_sorted_arrays([1,3,5], [2,4,6,7,8])

    assert_equal [1,2,3,4,5,6,7,8], merge
  end

  def test_split_array_down_to_arrays_of_two
    sorter = MergeSort.new

    merge = sorter.split_array_down_to_arrays_of_two([[4,3,6,9,8,7]])

    assert_equal [[4],[3,6],[9],[8,7]], merge
  end

  def test_split_arrays_can_reorder
    sorter = MergeSort.new

    reordered = sorter.sort_arrays_of_two([[4],[3,6],[9],[8,7]])

    assert_equal [[4],[3,6],[9],[7,8]], reordered
  end

  def test_final_merge_array
    sorter = MergeSort.new

    assert_equal [1,2,3,4,5,6,7,8], sorter.final_merge([[1,3], [2,4], [5,7], [6,8]])
  end

  def test_sort
    sorter = MergeSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

end
