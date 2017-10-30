require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './bubble/lib/bubble'

class BubbleTest < Minitest::Test

  def test_it_instantiates
    assert_instance_of Bubble, Bubble.new
  end

  def test_it_has_an_array_to_sort
    sorter = BubbleSort.new
    sorter.sort(["c", "d", "e", "a", "b"])

    assert_equal ["c", "d", "e", "a", "b"], sorter.field
  end

  def test_it_can_compare_and_swap_two_values
    sorter = BubbleSort.new
    results = compare_and_replace_inner_loop(0, 1, ["d", "c", "e", "a", "b"])

    assert_equal ["c", "d", "e", "a", "b"], results
  end

end
