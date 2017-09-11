require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './insertion/lib/insertion_sort'

class InsertionSortTest < Minitest::Test

def test_insertion_class_exists
  insertion = InsertionSort.new

  assert_instance_of InsertionSort, insertion
end

def test_bubble_can_sort_two_elements
  insertion = InsertionSort.new

  assert_equal [1, 2], insertion.sort([2, 1])
end

def test_can_sort_three_elements
  #skip
  insertion = InsertionSort.new

  assert_equal [1, 2, 3], insertion.sort([3, 2, 1])
end

def test_can_sort_four_letters
  #skip
  insertion = InsertionSort.new

  assert_equal ["a", "b", "c", "d"], insertion.sort(["d", "b", "a", "c"])
end
end
