require 'minitest/autorun'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_existence_of_class
    assert_instance_of InsertionSort, InsertionSort.new
  end

  def test_sort_method_takes_an_arguement
    sorted = InsertionSort.new
    argue = []

    assert_equal [], sorted.sort(argue)
  end

  def test_sort_returns_output
    sorted = InsertionSort.new
    argue = [1,0,4,3,2]
    
    assert_equal [0,1,2,3,4], sorted.sort(argue)
  end

  def test_sort_returns_correct_output
    sorted = InsertionSort.new
    argue = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], sorted.sort(argue)
  end

  def test_combination_of_letters_and_numbers
    sorted = InsertionSort.new
    argue = ["e", "a", "1", "b", "8"]

    assert_equal ["1", "8", "a", "b", "e"], sorted.sort(argue)
  end

  def test_sorting_array_is_passed
    sorted = InsertionSort.new

    assert_equal ["1", "8", "a", "b", "e"], sorted.sorting(["1", "8", "b", "e"],"a",0)
    assert_equal ["1", "8", "a", "b", "e"], sorted.sorting(["1", "8", "a", "b"],"e",0)
  end
  
end