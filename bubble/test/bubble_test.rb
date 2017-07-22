require './lib/bubble'
require 'pry'
require 'minitest/autorun'
require 'minitest/emoji'

class BubbleTest < Minitest::Test

  def test_bubble_sort
    bubble = Bubble.new
    assert_equal [0, 1, 2], bubble.sort([2, 1, 0])
    assert_equal [0, 1, 2, 3, 4], bubble.sort([2, 4, 3, 1, 0])
    assert_equal ['a', 'b', 'c', 'd'], bubble.sort(['d', 'a', 'b', 'c'])
    assert_equal ['Apple', 'Bananna', 'Cucumber'], bubble.sort(['Bananna', 'Cucumber', 'Apple'])
  end

end
