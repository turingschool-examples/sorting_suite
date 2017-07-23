require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/insertion_sort'

class InsertSortTest < Minitest::Test

  def test_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_sorts_letters
    skip
    sorter = InsertionSort.new

    assert_equals ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

end
