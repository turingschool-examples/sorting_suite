require 'minitest/autorun'
require 'minitest/pride'
require './bubble/lib/bubble'


class Bubble_Test < Minitest::Test

  def test_class_takes_array
    sorter = BubbleSort.new

    assert_equal [1,2,3,4], sorter.sort([1,4,3,2])
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end
end
