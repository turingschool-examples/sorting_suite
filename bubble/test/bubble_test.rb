require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './bubble/lib/bubble'

class BubbleTest < Minitest::Test

  def test_it_instantiates
    assert_instance_of Bubble, Bubble.new
  end

  def test_it_has_an_array_to_sort
    sorter = Bubble.new

    assert_equal ["c", "d", "e", "a", "b"], sorter.sort(["c", "d", "e", "a", "b"])
  end

  def test_it_has_an_initial_previous_value
    sorter = Bubble.new
    sorter.sort(["c", "d", "e", "a", "b"])

    assert_equal "c", sorter.previous
  end
end
