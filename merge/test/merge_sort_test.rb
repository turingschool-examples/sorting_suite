require 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test

  def test_it_exists
    sorter = MergeSort.new

    assert_instance_of MergeSort, sorter
  end

  def test_it_can_sort_letters
    sorter = MergeSort.new
    input = ["R", "F", "D", "P"]
    expected = ["D", "F", "P", "R"]

    assert_equal expected, sorter.sort(input)
  end

  def test_it_can_sort_numbers
    sorter = MergeSort.new
    input = [10, 4, 8, 3, 5, 7, 909]
    expected = [3, 4, 5, 7, 8, 10, 909]

    assert_equal expected, sorter.sort(input)
  end


end
