require 'minitest/autorun'
require 'minitest/emoji'
require './lib/insertion_sort'

class TestInsertionSort < Minitest::Test
  def test_can_order_three_values
    numbers = [0, 2, 1]
    insertion_sort = InsertionSort.new(numbers)

    assert_equal [0, 1, 2], insertion_sort.sort
  end

  def test_can_order_5_values
    numbers = [0, 23, 1, 4, 64]
    insertion_sort = InsertionSort.new(numbers)

    assert_equal [0, 1, 4, 23, 64], insertion_sort.sort
  end

  def test_can_order_7_values
    numbers = [24, 53, 432, 2, 8, 69, 37]
    insertion_sort = InsertionSort.new(numbers)
    sorted = numbers.sort

    assert_equal sorted, insertion_sort.sort
  end

  def test_range_is_valid
    numbers = (0..100).map {|num| num}.shuffle
    sorted = (0..100).map {|num| num}

    refute numbers == sorted
  end

  def test_can_order_100_values
    numbers = (0..100).map {|num| num}.shuffle
    insertion_sort = InsertionSort.new(numbers)
    sorted = (0..100).map {|num| num}

    assert_equal sorted, insertion_sort.sort
  end

  def test_can_order_10000_values
    numbers = (0..10000).map {|num| num}.shuffle
    insertion_sort = InsertionSort.new(numbers)
    sorted = (0..10000).map {|num| num}

    assert_equal sorted, insertion_sort.sort
  end
end
