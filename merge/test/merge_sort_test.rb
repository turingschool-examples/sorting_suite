require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test
  attr_reader :sorter

  def setup
    @sorter = MergeSort.new
  end

  def test_its_a_thing
    assert_instance_of MergeSort, sorter
  end

  def test_it_can_sort_letter
    letters = ["d", "b", "e", "a", "c"]
    assert_equal ["a","b","c","d","e"], sorter.sorted(letters)
  end

  def test_it_can_sort_numbers
    numbers  = [3,6,2,7,3,8]
    expected = [2,3,3,6,7,8]
    assert_equal expected, sorter.sorted(numbers)
  end

  def test_it_can_sort_mixed_letters
    letters  = ["d","B","a","c"]
    expected = ["B","a","c","d"]
    assert_equal expected, sorter.sorted(letters)
  end

end
