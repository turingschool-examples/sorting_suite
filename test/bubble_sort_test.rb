require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/bubble_sort"

class BubbleSortTest < Minitest::Test

  def test_it_exists
    bs = BubbleSort.new

    assert_instance_of BubbleSort, bs
  end

  def test_is_can_sort_array
    bs = BubbleSort.new

    assert_equal [1,2,3,4,5], bs.sort([2,5,1,4,3])
  end

  def test_it_can_sort_letters
    bs = BubbleSort.new

    assert_equal ["a", "b", "c", "d", "e"], bs.sort(["e", "d", "a", "c", "b"])
  end

  def test_it_works_with_multiple_character_numbers
    bs = BubbleSort.new

    assert_equal [1, 244, 420, 928, 1234], bs.sort([244, 928, 1, 1234, 420])
  end

  def test_arrays_less_than_and_greater_than_five_indices_can_be_sorted
    bs = BubbleSort.new

    assert_equal [244, 420, 1234], bs.sort([244, 1234, 420])
    assert_equal [1, 3, 3, 5, 6, 8, 8, 32, 56, 99], bs.sort([8,3,5,1,3,6,8,99,32,56])
    assert_equal [], bs.sort([])
  end

  def test_spec_test
    bs = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], bs.sort(["d", "b", "a", "c"])
  end
end
