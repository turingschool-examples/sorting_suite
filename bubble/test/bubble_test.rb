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

end
