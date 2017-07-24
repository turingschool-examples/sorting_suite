require 'simplecov'
SimpleCov.start

require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './merge/lib/merge'

class MergeSortTest < MiniTest::Test

  def test_merge_sort_exists
    sorter = MergeSort.new
    assert sorter
  end

  def test_merge_sort_returns_array
    sorter = MergeSort.new
    assert_kind_of Array, sorter.merge([])
    test_letters = ["d", "b", "a", "c"]
    assert_kind_of Array, sorter.merge(test_letters)
  end

  def test_merge_sort_works_for_given_set
    sorter = MergeSort.new
    expected = ["a", "b", "c", "d"]
    test_letters = ["d", "b", "a", "c"]
    assert_equal expected, sorter.merge(test_letters)
  end

  def test_single_element_array_returns
    sorter = MergeSort.new
    expected = ["a"]
    test_letters = ["a"]
    assert_equal expected, sorter.merge(test_letters)
  end

  def test_merge_sort_works_for_random_alphabet
    sorter = MergeSort.new
    expected = ('a'..'z').to_a
    test_letters = expected.shuffle
    assert_equal expected, sorter.merge(test_letters)
  end

  def test_merge_sort_works_for_random_numbers
    sorter = MergeSort.new
    expected = (0..100).to_a
    test_numbers = expected.shuffle
    assert_equal expected, sorter.merge(test_numbers)
  end

  def test_if_it_can_single_sort_pass_with_string_array
    sorter = SelectionSort.new
    assert_equal "alpha", sorter.sort_pass(["alpha","delta","beta","gamma","epsilon"])
  end

end
