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

end