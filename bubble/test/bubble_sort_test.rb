require 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_it_can_sort_letters
    sorter = BubbleSort.new
    expected = ["a", "b", "c", "d"]
    input = ["d", "b", "c", "a"]

    assert_equal expected, sorter.sort(input)
  end

  def test_it_can_sort_numbers
    sorter = BubbleSort.new
    expected = [3, 4, 6, 7, 9]
    input =    [3, 7, 4, 9, 6]

    assert_equal expected, sorter.sort(input)
  end
end
