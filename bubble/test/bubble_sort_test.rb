require 'minitest/autorun'
require 'minitest/emoji'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_sort_1_number_1_space_right
    numbers = [0,2,1,3,4,5]
    result = BubbleSort.sort(numbers)

    assert_equal [0,1,2,3,4,5], result
  end

  def test_sort_1_number_2_space_right
    numbers = [2,0,1,3,4,5]
    result = BubbleSort.sort(numbers)

    assert_equal [0,1,2,3,4,5], result
  end

  def test_sort_1_number_5_space_right
    numbers = [5,0,1,2,3,4]
    result = BubbleSort.sort(numbers)

    assert_equal [0,1,2,3,4,5], result
  end

  def test_sort_1_number_5_space_left
    numbers = [1,2,3,4,5,0]
    result = BubbleSort.sort(numbers)

    assert_equal [0,1,2,3,4,5], result
  end

  def test_sort_2_number_5_space_left
    numbers = [3,1,2,4,5,0]
    result = BubbleSort.sort(numbers)

    assert_equal [0,1,2,3,4,5], result
  end

  def test_sort_6_numbers_4_out_of_place
    numbers = [3,0,1,5,4,2]
    result = BubbleSort.sort(numbers)

    assert_equal [0,1,2,3,4,5], result
  end


  def test_sort_more_numbers_4_out_of_place
    numbers = [1, 7, 99, 2, 0, 12, 15]
    result = BubbleSort.sort(numbers)

    assert_equal [0, 1, 2, 7, 12, 15, 99], result
  end

  def test_sort_letters
    letters = %w[a d g e c t s]
    result = BubbleSort.sort(letters)

    assert_equal %w[a c d e g s t], result
  end

  def test_can_order_10000_values
    numbers = (0..10000).map {|num| num}.shuffle
    sorted = (0..10000).map {|num| num}

    assert_equal sorted, BubbleSort.sort(numbers)
  end
end
