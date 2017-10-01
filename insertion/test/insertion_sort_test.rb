require_relative '../../test_helper.rb'
require_relative '../lib/insertion_sort.rb'

class InsertionSortTest < Minitest::Test
  attr_reader :insertion

  def setup 
    @insertion = InsertionSort.new
  end
  
  def test_insertion_exists
    assert insertion
    assert_instance_of InsertionSort, insertion
  end

  def test_throws_error_if_not_array
    assert_equal 'error', insertion.sort('yo')
  end
  
  def test_sort_ints
    actual   = insertion.sort([9, 20, 33, 15, 4, 7, 16, 2])
    expected = [2, 4, 7, 9, 15, 16, 20, 33]
    
    assert_equal actual, expected
  end

  def test_sort_strings
    expected = ['a','b','c','d','g','i','m']
    actual = insertion.sort(['d', 'b', 'c', 'a', 'm', 'g', 'i'])
  end
end

