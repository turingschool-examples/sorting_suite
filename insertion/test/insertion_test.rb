require 'minitest/autorun'
require 'minitest/pride'
require './insertion/lib/insertion'


class Insertion < Minitest::Test

  def test_it_sorts
    sorter = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end
end
