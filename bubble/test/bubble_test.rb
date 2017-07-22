require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/bubble'

class BubbleTest < Minitest::Test

  def test_it_exists
    bubble = Bubble.new([])

    assert_instance_of Bubble, bubble
  end

  def test_it_has_an_array
    bubble = Bubble.new([2,0,1])

    assert_equal [0, 1, 2], bubble.array
  end

end
