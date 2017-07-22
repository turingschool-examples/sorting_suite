require './lib/bubblesort'
require 'minitest/autorun'
require 'minitest/pride'



class BubbleSortTest < Minitest::Test

  def test_sort_using_letters
    sorter = BubbleSort.new
    letter_array = ["d", "b", "a", "c"]
    letter_array2 = ["d", "a", "c", "b"]
    letter_array3 = ["d", "c", "b", "a"]

    assert_equal ["a", "b", "c", "d"], sorter.sort(letter_array)
    assert_equal ["a", "b", "c", "d"], sorter.sort(letter_array2)
    assert_equal ["a", "b", "c", "d"], sorter.sort(letter_array3)
  end
end
