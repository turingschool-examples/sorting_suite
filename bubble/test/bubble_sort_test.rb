require 'minitest/autorun'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_existence_of_class
    assert_instance_of BubbleSort, BubbleSort.new
  end

  def test_sort_method_takes_an_arguement
    sorted = BubbleSort.new
    argue = []

    assert_equal [], sorted.sort(argue)
  end

  def test_sort_returns_output
    sorted = BubbleSort.new
    argue = [4, 2, 0, 3, 1]
    
    assert_equal [0,1,2,3,4], sorted.sort(argue)
  end

  def test_if_swap_returns_true
    sorted = BubbleSort.new
    argue = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], sorted.sort(argue)
  end

  def test_combination_of_letters_and_numbers
    sorted = BubbleSort.new
    argue = ["e", "a", "1", "b", "8"]

    assert_equal ["1", "8", "a", "b", "e"], sorted.sort(argue)
  end
  
end