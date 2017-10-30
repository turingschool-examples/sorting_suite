require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './insertion/lib/insertion'

class InsertionTest < Minitest::Test

  def test_it_instantiates
    assert_instance_of InsertionSort, InsertionSort.new
  end

  def test_it_has_an_array_to_sort
    sorter = InsertionSort.new
    sorter.sort(["c", "d", "e", "a", "b"])

    assert_equal ["c", "d", "e", "a", "b"], sorter.field
  end

  def test_it_can_compare_and_swap_two_values
    sorter = InsertionSort.new
    results = compare_and_replace_inner_loop(0, 1, ["d", "c", "e", "a", "b"])

    assert_equal ["c", "d", "e", "a", "b"], results
  end

  def test_it_can_push_the_firt_element
    sorter = InsertionSort.new
    field = ["d", "b", "a", "c"]
    results = push_first_element(empty_array, field)

    assert_equal ["d"], empty_array
    assert_equal ["b", "a", "c"], field
  end

end
