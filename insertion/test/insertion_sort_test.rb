require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_it_exits
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

end
