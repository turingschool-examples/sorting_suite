require 'minitest/autorun'
require 'minitest/pride'
require './lib/selection_sort.rb'


class SelectionSortTest < Minitest::Test

  def test_merge_exists
    s = Selection.new

    assert_instance_of Selection, s
  end

  def test_merge_can_sort
    s = Selection.new
    array = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], s.sort(array)
  end

  def test_can_sort_numbers
    s = Selection.new
    numbers = [4, 2, 1, 5, 3]
    actual = [1, 2, 3, 4, 5]

    assert_equal actual, s.sort(numbers)
  end

  def test_can_sort_neg_numbers
    s = Selection.new
    numbers = [-4, -2, -1, -5, -3]
    actual = [-5, -4, -3, -2, -1]

    assert_equal actual, s.sort(numbers)
  end


end
