require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  attr_reader :sorter

  def setup
    @sorter = InsertionSort.new
  end

  def test_its_a_thing
    assert_instance_of InsertionSort, sorter
  end
end
