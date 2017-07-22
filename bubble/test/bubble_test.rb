require './lib/bubble'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class BubbleTest < Minitest::Test
  def test_bubble_sort
    assert_equal [0, 1, 2, 3, 4], sort([3, 1, 4, 0, 2])
    assert_equal [0, 1, 2, 3, 4], sort([2, 4, 3, 1, 0])
    assert_equal ['a', 'b', 'c', 'd'], sort(['d', 'a', 'b', 'c'])
  end

end
