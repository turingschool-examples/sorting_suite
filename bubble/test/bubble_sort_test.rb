require 'minitest/autorun'
require 'minitest/emoji'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  attr_reader :sorter

  def setup
    @sorter = BubbleSort.new
  end

  def test_bubble_sort_class_exists
    assert_instance_of BubbleSort, @sorter
  end

  def test_pair_sort_sorts_letters_in_array_of_two_letters
    actual = @sorter.pair_sort(["b", "a"], 0)
    expected = ["a", "b"]

    assert_equal expected, actual
  end

  def test_single_pass_sort_sorts_each_consecutive_pair_of_letters_in_array_once
    actual = @sorter.single_pass_sort(["c", "b", "a"])
    expected = ["b", "a", "c"]

    assert_equal expected, actual
  end

  def test_sort_sorts_letters_in_array_of_four_letters
    actual = @sorter.sort(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]

    assert_equal expected, actual
  end

end
