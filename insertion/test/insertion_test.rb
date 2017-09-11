require "minitest/autorun"
require './lib/insertion'

class InsertionSortTest < Minitest::Test
  def test_check_if_class_insertion_sort_exist
    insertion = InsertionSort.new

    assert_instance_of InsertionSort, insertion
  end

  def test_check_if_sort_method_works
    insertion = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], insertion.sort(["d", "b", "a", "c"])
    assert_equal [0,1,2,3,4], insertion.sort([1,0,4,3,2])
  end

  def test_if_sort_method_sorts_an_empty_array
    insertion = InsertionSort.new

    assert_equal [], insertion.sort([])
  end

  def test_if_sort_method_sorts_an_one_element_array
    insertion = InsertionSort.new

    assert_equal ["1"], insertion.sort(["1"])
  end

  def test_if_it_can_sort_numbers_and_letters
    insertion = InsertionSort.new

    assert_equal ["1", "b", "c", "d"], insertion.sort(["d", "b", "1", "c"])
  end

end
