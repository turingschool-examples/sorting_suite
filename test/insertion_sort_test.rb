require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/insertion_sort"

class InsertionSortTest < Minitest::Test

  def test_it_exists
    is = InsertionSort.new

    assert_instance_of InsertionSort, is
  end

  def test_it_is_created_with_empty_sorted_array
    is = InsertionSort.new

      assert_instance_of Array, is.sorted
      assert_empty is.sorted
  end

  def test_mixed_array_can_be_sorted
    is = InsertionSort.new

    assert_equal [1,2,3,4,5], is.sort([5,4,3,2,1])
  end

  def test_letters_can_be_sorted
    is = InsertionSort.new


    assert_equal ["a", "b", "c", "d", "e"], is.sort(["a", "e", "b", "d", "c"])
  end

  def test_multiple_character_indices_can_be_sorted
    is = InsertionSort.new

    assert_equal [8, 53, 69, 420, 666, 821, 1085], is.sort([666, 1085, 420, 69, 8, 821, 53])
  end

  def test_spec_test
    is = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], is.sort(["d", "b", "a", "c"])
  end
end
