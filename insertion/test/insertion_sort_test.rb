require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort.rb'


class InsertionSortTest < Minitest::Test

  def test_exists
    insertion = InsertionSort.new

    assert_instance_of InsertionSort, insertion 
  end




end
