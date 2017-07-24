require './lib/bubble'
require 'minitest/autorun'
require 'minitest/pride'

class BubbleTest < Minitest::Test

  def test_it_can_sort_numbers
    bubble = Bubble.new
    array = [5, 2, 3, 6, 1, 4, 9, 7, 8]
    expected = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    assert_equal expected, bubble.bubble_sort(array)
  end

  def test_it_can_sort_characters
    bubble = Bubble.new
    array = ["b", "c", "e", "d", "a", "f"]
    expected = ["a", "b", "c", "d", "e", "f"]

    assert_equal expected, bubble.bubble_sort(array)
  end

  def test_it_can_sort_negative_numbers
    bubble = Bubble.new
    array = [-5, -2, -3, -6, -1, -4, -9, -7, -8]
    expected = [-9, -8, -7, -6, -5, -4, -3, -2, -1]

    assert_equal expected, bubble.bubble_sort(array)
  end

end