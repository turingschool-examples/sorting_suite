require 'minitest/autorun'
require 'minitest/emoji'
require './lib/merge_sort'

class TestMergeSort < Minitest::Test
  # def test_it_initializes
  #   numbers = [0, 2, 1]
  #   merge_sort = MergeSort.new(numbers)
  #
  #   assert_instance_of MergeSort, merge_sort
  #   assert_equal [0,2,1], merge_sort.to_sort
  #   assert_equal [], merge_sort.sorted
  # end

  def test_can_order_four_values
    numbers = [2,1,3,0]
    merge_sort = MergeSort.new

    assert_equal [0, 1, 2, 3], merge_sort.sort(numbers)
  end

  def test_can_order_5_values
    numbers = [0, 23, 1, 4, 64]
    merge_sort = MergeSort.new

    assert_equal [0, 1, 4, 23, 64], merge_sort.sort(numbers)
  end

  def test_can_order_7_values
    numbers = [24, 53, 432, 2, 8, 69, 37]
    merge_sort = MergeSort.new
    sorted = numbers.sort

    assert_equal sorted, merge_sort.sort(numbers)
  end

  def test_range_is_valid
    numbers = (0..100).map {|num| num}.shuffle
    sorted = (0..100).map {|num| num}

    refute numbers == sorted
  end

  def test_can_order_100_values
    numbers = (0..100).map {|num| num}.shuffle
    merge_sort = MergeSort.new
    sorted = (0..100).map {|num| num}

    assert_equal sorted, merge_sort.sort(numbers)
  end

  def test_can_order_10000_values
    numbers = (0..10000).map {|num| num}.shuffle
    merge_sort = MergeSort.new
    sorted = (0..10000).map {|num| num}

    assert_equal sorted, merge_sort.sort(numbers)
  end

end
