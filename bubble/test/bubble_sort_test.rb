gem 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/bubble_sort'

class ArrayTest < Minitest::Test
  def test_sorter_exists
    sorter = Array.new

    assert_instance_of Array, sorter
  end

  def test_sorter_can_sort
    sorter = Array.new(["d", "b", "a", "c"])

    assert_equal (["a", "b", "c", "d"]), sorter.sort
  end

end
