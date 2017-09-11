require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < MiniTest::Test

  def test_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_can_find_insertion_point
    sorter = InsertionSort.new
    sorter.sorted = [2,4]

    assert_equal 0, sorter.find_insertion_point([1])
    assert_equal 1, sorter.find_insertion_point([3])
    assert_equal 1, sorter.find_insertion_point([5,4])
  end

  def test_it_knows_one_element
    sorter = InsertionSort.new
    sorter.sorted = [3]
    index = 0

    assert sorter.one_element?(index)
  end

  def test_it_can_insert_element_on_end
    sorter = InsertionSort.new
    sorter.sorted = [3]

    assert_equal [3,4], sorter.insert_last_element(4)
  end

  def test_it_can_insert_element_on_front
    sorter = InsertionSort.new
    sorter.sorted = [3]

    assert_equal [2,3], sorter.insert_first_element(2)
  end

  def test_it_can_insert_value_into_sorted_array_of_one_element
    sorter = InsertionSort.new
    sorter.sorted = [1]

    assert_equal [0,1], sorter.insert_around_first_element(0)
    assert_equal [0,1,2], sorter.insert_around_first_element(2)
  end

  def test_it_knows_last_element
    sorter = InsertionSort.new
    sorter.sorted = [1]

    assert sorter.last_element?(0)

    sorter.sorted = [2,3,5]
    assert sorter.last_element?(2)
  end

  def test_it_knows_max_value
    sorter = InsertionSort.new
    sorter.sorted = [1,4]

    assert sorter.max_value?(5)
    refute sorter.max_value?(3)
  end

  def test_it_can_insert_final_value
    sorter = InsertionSort.new
    sorter.sorted = [1,4]

    assert_equal [0,1,4], sorter.insert_final_value(0,0)
    assert_equal [0,1,4,5], sorter.insert_final_value(5,2)
    assert_equal [0,1,4,5,6], sorter.insert_final_value(6,3)
  end


  def test_it_can_insert_a_value_into_sorted
    sorter = InsertionSort.new
    array = [2,4,5]
    sorter.sorted = [1,3]

    assert_equal [1,2,3], sorter.insert_value(1, array)
  end

  def test_it_can_insert_a_value_into_sorted_at_beginning
    sorter = InsertionSort.new
    array = [0,4]
    sorter.sorted = [2,5]

    assert_equal [0,2,5], sorter.insert_value(0, array)
  end

  def test_it_can_insert_a_value_into_sorted_at_end
    sorter = InsertionSort.new
    array = [5,3,1]
    sorter.sorted = [2,4]

    assert_equal [2,4,5], sorter.insert_value(1, array)
  end

  def test_it_can_insert_a_value_into_sorted_with_one_element
    sorter = InsertionSort.new
    array = [1,5,3]
    sorter.sorted = [2]

    assert_equal [1,2], sorter.insert_value(0,array)

    array = [3,5,1]
    sorter.sorted = [2]

    assert_equal [2,3], sorter.insert_value(0,array)
  end

  def test_it_can_insert_a_value_into_sorted_with_one_element
    sorter = InsertionSort.new
    array = [5]
    sorter.sorted = [1,3,4]

    assert_equal [1,3,4,5], sorter.insert_value(3,array)

    array = [4]
    sorter.sorted = [1,2,3,5]

    assert_equal [1,2,3,4,5], sorter.insert_value(3, array)
  end

  def test_it_can_sort_numbers
    sorter = InsertionSort.new

    assert_equal [1,2,3,4,5], sorter.sort([3,2,1,5,4])
  end

  def test_it_can_sort_letters
    sorter = InsertionSort.new

    assert_equal ['a','b','c','d'], sorter.sort(["d", "b", "a", "c"])
  end

end
