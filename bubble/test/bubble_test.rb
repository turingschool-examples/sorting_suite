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
    sorter.sort(["c", "d", "e", "a", "b"])

    assert_equal ["c", "d", "e", "a", "b"], sorter.field
  end

  def test_it_has_an_initial_previous_value
    sorter = Bubble.new
    sorter.sort(["d", "b", "a", "c"])

    assert_equal "d", sorter.find_previous
  end

  def test_it_has_an_initial_current_value
    sorter = Bubble.new
    sorter.sort(["d", "b", "a", "c"])

    assert_equal "b", sorter.find_current
  end

  def test_it_can_compare_values
    sorter = Bubble.new
    sorter.sort(["d", "b", "a", "c"])
    sorter.find_previous
    sorter.find_current


    assert_equal 1, sorter.compare
  end

  def test_it_can_switch_previous_and_current
    sorter = Bubble.new
    sorter.sort(["d", "b", "a", "c"])
    sorter.find_previous
    sorter.find_current

    assert_equal "b", sorter.swap.first
  end

  def test_it_can_ammend_the_original_array
    sorter = Bubble.new
    sorter.sort(["d", "b", "a", "c"])
    sorter.find_previous
    sorter.find_current

    assert_equal ["b", "d", "a", "c"], sorter.analyze
  end

  def test_it_can_redefine_previous_and_current
    sorter = Bubble.new
    sorter.sort(["d", "b", "a", "c"])
    sorter.find_previous
    sorter.find_current

    assert_equal "d", sorter.previous
    assert_equal "b", sorter.current

    sorter.move_next

    assert_equal "b", sorter.previous
    assert_equal "a", sorter.current

    sorter.move_next

    assert_equal "a", sorter.previous
    assert_equal "c", sorter.current

    assert_nil sorter.move_next
  end

  def test_it_can_sort_an_array
    sorter = Bubble.new
    sorter.sort(["d", "b", "a", "c"])

    assert_equal ["a", "b", "c", "d"], sorter.analyze_loop
  end

end
