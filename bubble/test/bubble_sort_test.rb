require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'


class BubbleSortTest < Minitest::Test

  def test_exists
    b = BubbleSort.new


    assert_instance_of BubbleSort, b
  end

  def test_can_sort_letters
    b = BubbleSort.new
    array = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], b.sort(array)
  end

  def test_can_sort_numbers
    b = BubbleSort.new
    numbers = [4, 2, 1, 5, 3]

    assert_equal numbers, b.sort(numbers)
  end

  def test_can_sort_neg_numbers
    b = BubbleSort.new
    numbers = [-4, -2, -1, -5, -3]

    assert_equal numbers, b.sort(numbers)

  end

end
