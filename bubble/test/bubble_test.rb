gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './bubble/lib/bubble.rb'

class BubbleSortTest < Minitest::Test

  def test_bubble_sort_on_integers
    sort = BubbleSort.new
    data_set = [2, 0, 1, 3, 4, 5]

    assert_equal data_set.sort, sort.get_sorted_results(data_set)
  end

  def test_bubble_sort_on_letters
    letter_sort = BubbleSort.new
    data_set = ["d", "b", "a", "c"]

    assert_equal data_set.sort, letter_sort.get_sorted_results(data_set)
  end

  def test_sorting_bubbles
    bubbles = BubbleSort.new
    data_set = [2, 0, 1, 3, 4, 5]
    data_set_two = [5, 6, 8, 2, 5, 7, 9, 13, 54345, 67, 123, 5757, 124, 0, 324, 7, 789]
    data_set_three = [1]

    assert_equal [0, 1, 2, 3, 4, 5], bubbles.sorting_bubbles(data_set)
    assert_equal data_set_two.sort, bubbles.sorting_bubbles(data_set_two)
    assert_equal [1], bubbles.sorting_bubbles(data_set_three)
  end

  def test_sort_tacular
    bubbletacular = BubbleSort.new
    data_set = [2, 0, 1, 3, 4, 5]
    data_set_two = [5, 6, 8, 2, 5, 7, 9, 13, 54345, 67, 123, 5757, 124, 0, 324, 7, 789]
    data_set_three = [1]

    assert_equal [0, 1, 2, 3, 4, 5], bubbletacular.bubble_sort_tacular(data_set)
    assert_equal data_set_two.sort, bubbletacular.bubble_sort_tacular(data_set_two)
    assert_equal [1], bubbletacular.bubble_sort_tacular(data_set_three)
  end
end
