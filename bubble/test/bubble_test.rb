require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleTest < Minitest::Test

  def test_bubble_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_sort
    sorter = BubbleSort.new

    assert_equal ['a', 'b', 'c', 'd'], sorter.sort(["d", "b", "a", "c"])
  end


end
