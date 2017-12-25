require "minitest/autorun"
require "minitest/emoji"
require "./lib/merge_sort"
require "pry"

class MergeSortTest < Minitest::Test

  def test_merge_sort_exists
    merge = MergeSort.new

    assert_instance_of MergeSort, merge
  end

  def test_merge_sort_sorts
    merge = MergeSort.new

    assert_equal ["a", "b", "c", "d"], merge.sort(["d", "b", "a", "c"])
  end

  def test_start_format_for_conversion_to_an_array_of_numbers
    merge = MergeSort.new

    assert_equal [100, 98, 97, 99], merge.start_format(["d", "b", "a", "c"])
  end

  def test_finish_format_for_conversion_from_numbers_to_letters
    merge = MergeSort.new

    assert_equal ["a", "b", "c", "d"], merge.finish_format([97, 98, 99, 100])
  end

  def test_merge_sort_for_bad_input
    merge = MergeSort.new

    assert_equal "Please put in letters or numbers.", merge.pre_sort([true])
    assert_equal "Sorting...", merge.pre_sort(["a"])
  end

end
