require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./insertion/lib/insertion_sort"

class InsertionTest < Minitest::Test

  def test_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_can_swap_indices
    sorter = InsertionSort.new

    assert_equal [0, 1], sorter.sort([1, 0])
  end

  def test_it_can_skip_proper_indices
    sorter = InsertionSort.new

    assert_equal [0, 1, 2], sorter.sort([0, 2, 1])
  end

  def test_it_swaps_until_sorted
    sorter = InsertionSort.new

    assert_equal [0,1,2,3,4], sorter.sort([4,3,2,1,0])
  end

  def test_it_works_for_letters
    sorter = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_it_can_sort_multiple_digit_indices
    sorter = InsertionSort.new

    assert_equal [0, 1, 12, 69, 353, 85832], sorter.sort([353, 85832, 0, 12, 1, 69])
  end
end
