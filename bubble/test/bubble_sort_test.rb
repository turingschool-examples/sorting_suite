require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubblesortTest < Minitest::Test

  def test_it_exists
    sorter = Bubblesort.new

    assert_instance_of Bubblesort, sorter
  end

  def test_it_sorts_a_single_letter
    sorter = Bubblesort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end
  #
  # def test_it_sorts
  #   skip
  #   sorter = Bubblesort.new
  #
  #   assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  # end



end
