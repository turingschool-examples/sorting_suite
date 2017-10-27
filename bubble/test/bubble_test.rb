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
    sorter.sort(["d", "b", "a", "c"])

    assert_equal "d", sorter.previous
  end

  def test_it_has_an_initial_current_value
    sorter = Bubble.new
    sorter.sort(["d", "b", "a", "c"])

    assert_equal "b", sorter.current
  end

  def test_it_can_compare_values
    sorter = Bubble.new
    

  def test_it_can_switch_previous_and_current_if_they_are_out_of_order
    skip
    sorter = Bubble.new
    sorter.sort(["d", "b", "a", "c"])

    assert_equal "b", sorter.field.first
  end

end
