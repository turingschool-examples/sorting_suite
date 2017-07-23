require 'simplecov'
SimpleCov.start

require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble'

class BubbleTest < MiniTest::Test

  def test_class_exists
    sorter = BubbleSort.new
    assert_instance_of BubbleSort, sorter
  end

  def test_for_default_testing_array_as_argument
    skip #since we need next test to pass
    sorter = BubbleSort.new
    given_unsorted_letters = ["d", "b", "a", "c"]
    expected = ["d", "b", "a", "c"]
    assert_equal expected, sorter.swaper(given_unsorted_letters)
  end

  def test_if_swaper_can_sort
    sorter = BubbleSort.new
    given_unsorted_letters = ["d", "b", "a", "c"]
    expected = ["a", "b", "c", "d"]
    assert_equal expected, sorter.swaper(given_unsorted_letters)
  end

  def test_if_bubble_sort_works_for_random_letters
    sorter = BubbleSort.new
    expected = ("a".."z").to_a
    test_letters = expected.shuffle
    assert_equal expected, sorter.swaper(test_letters)
  end

  def test_longer_list_of_letters
    sorter = BubbleSort.new
    start_letters = ["d", "b", "a", "c", "d", "b", "a", "c"]
    expected_letters = ["a", "a", "b", "b", "c", "c", "d", "d"]
    assert_equal expected_letters, sorter.swaper(start_letters)
  end

  def test_if_numbers_can_work
    sorter = BubbleSort.new
    start_numbers = [5, 3, 4, 1, 2]
    expected_numbers = [1, 2, 3, 4, 5]
    assert_equal expected_numbers, sorter.swaper(start_numbers)
  end


end
