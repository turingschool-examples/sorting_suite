require 'minitest/autorun'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_existence_of_class
    assert_instance_of BubbleSort, BubbleSort.new
  end

end