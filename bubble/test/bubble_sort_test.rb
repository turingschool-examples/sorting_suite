require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < MiniTest::Test

  def test_does_it_exist?
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def sort
    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort
  end

end
