require "./lib/bubble_sort"
require "minitest/autorun"
require "minitest/pride"
require "pry"

class BubbleSortTest < Minitest::Test

  def test_bubble_sort_exists
    bubble = BubbleSort.new

    assert_instance_of BubbleSort, bubble
  end

  def test_bubble_sort_sorts
    bubble = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], bubble.sort(["d", "b", "a", "c"])
  end

  def test_start_format_for_conversion_to_an_array_of_numbers
    bubble = BubbleSort.new

    assert_equal [100, 98, 97, 99], bubble.start_format(["d", "b", "a", "c"])
  end

  def test_finish_format_for_conversion_from_numbers_to_letters
    bubble = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], bubble.finish_format([97, 98, 99, 100])
  end

  def test_bubble_sort_for_bad_input
    bubble = BubbleSort.new

    assert_equal "Please put in letters or numbers.", bubble.pre_sort([true])
    assert_equal "Sorting...", bubble.pre_sort(["a"])
  end

end
