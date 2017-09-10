require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_can_instantiate_insertion_sort
    inserted = InsertionSort.new
    assert_instance_of InsertionSort, inserted
  end

  def test_insertion_sort_returns_correct_array
    inserted = InsertionSort.new
    expected = inserted.sort(['d', 'b', 'a', 'c'])
    actual = ['a', 'b', 'c', 'd']
    assert_equal expected, actual
  end

end
