require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './insertion/lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_it_can_be_created
    is = InsertionSort.new

    assert is
    assert_instance_of InsertionSort, is
  end

  def test_it_can_sort_nothing
    is = InsertionSort.new

    assert_nil is.sort([])
  end

  def test_it_can_sort_one_element
    is = InsertionSort.new

    assert_equal "a", is.sort(["a"])
  end

  def test_it_can_sort_multiple_elements_once_through
    is = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], is.sort(["b", "a", "d", "c"])
  end

  def test_its_last_element_is_always_working
    is = InsertionSort.new

    assert_equal "d", is.sort(["b", "d", "c", "a"]).last
    assert_equal "z", is.sort(["b", "z", "d", "c", "a", "r", "o", "x", "p", "m"]).last
  end

  def test_it_can_sort_more_mixed_elements
    is = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], is.sort(["b", "d", "c", "a"])
  end

  def test_it_can_sort_a_large_number_of_elements
    is = InsertionSort.new

    sorted = ["a", "b", "c", "d", "m", "o", "p", "r", "x", "z"]
    assert_equal sorted, is.sort(["b", "z", "d", "c", "a", "r", "o", "x", "p", "m"])
  end

end
