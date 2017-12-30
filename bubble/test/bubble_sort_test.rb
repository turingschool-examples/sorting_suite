gem 'minitest'
require './bubble/lib/bubble_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BubbleSortTest < Minitest::Test

  def test_if_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_sort_one_pass_with_alphabets
    sorter = BubbleSort.new
    result = sorter.sort_one_pass(["z", "k", "l", "p", "t", "r", "a"])

    assert_equal ["k", "l", "p", "t", "r", "a", "z"], result
  end

  def test_sort_one_pass_with_numbers
    sorter = BubbleSort.new
    result = sorter.sort_one_pass([7, 9, 1, 55, 22, 14, 99, 3, 8])

    assert_equal [7, 1, 9, 22, 14, 55, 3, 8, 99], result
  end

  def test_sort_with_alphabets
    sorter = BubbleSort.new
    result = sorter.sort(["z", "k", "l", "p", "t", "r", "a"])

    assert_equal ["a", "k", "l", "p", "r", "t", "z"], result
  end

  def test_sort_with_numbers
    sorter = BubbleSort.new
    result = sorter.sort([7, 9, 1, 55, 22, 14, 99, 3, 8])

    assert_equal [1, 3, 7, 8, 9, 14, 22, 55, 99], result
  end

end
