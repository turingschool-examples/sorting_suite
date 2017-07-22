require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble'
require 'pry'

class BubbleTest < Minitest::Test
  def test_class_exist
    bubble = Bubble.new
    assert_instance_of Bubble, bubble
  end

  def test_it_can_take_array_as_argument
    bubble = Bubble.new

    array = [2, 0, 1, 3, 4, 5]

    assert_instance_of Array, bubble.sort(array)
  end

end
