require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/bubble'

class BubbleTest < Minitest::Test

  def test_it_exists
    bubble = Bubble.new

    assert_instance_of Bubble, bubble
  end

  def test_it_can_sort_array
    bubble = Bubble.new
    array = [2, 0, 1, 3, 4, 5]
    assert_equal [0, 1, 2, 3, 4, 5], bubble.sorter(array)
  end

  def test_it_can_sort_another_array
    bubble = Bubble.new
    array = [4, 2, 0, 3, 1]
    assert_equal [0, 1, 2, 3, 4], bubble.sorter(array)
  end

end
