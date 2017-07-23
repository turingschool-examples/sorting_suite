require 'simplecov'
SimpleCov.start

require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion'

class InsertionSortTest < MiniTest::Test

  def test_insert_sort_class_exists
    sorter = InsertionSort.new
    assert sorter
  end


end
