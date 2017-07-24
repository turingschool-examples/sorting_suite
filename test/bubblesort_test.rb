require './lib/bubblesort'
require 'minitest/autorun'
require 'minitest/pride'

class BubbleSortTest < Minitest::Test
  include BubbleSort

  def test_sort_using_letters
    letter_array = ["d", "b", "a", "c"]
    letter_array2 = ["d", "a", "c", "b"]
    letter_array3 = ["d", "c", "b", "a"]

    assert_equal ["a", "b", "c", "d"], bubble_sort(letter_array)
    assert_equal ["a", "b", "c", "d"], bubble_sort(letter_array2)
    assert_equal ["a", "b", "c", "d"], bubble_sort(letter_array3)
  end

  def test_sort_using_numbers
    number_array = [3, 5, 1, 7, 10]
    number_array2 = [5, 3, 1, 10, 7]
    number_array3 = [31, 50, 1, 70, 100000]

    assert_equal [1, 3, 5, 7, 10], bubble_sort(number_array)
    assert_equal [1, 3, 5, 7, 10], bubble_sort(number_array2)
    assert_equal [1, 31, 50, 70, 100000], bubble_sort(number_array3)
  end
end
