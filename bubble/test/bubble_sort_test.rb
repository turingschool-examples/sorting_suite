require_relative '../../test_helper.rb'
require_relative '../lib/bubble_sort.rb'

class BubbleSortTest < Minitest::Test 
  attr_reader :bubble
  def setup 
    @bubble = BubbleSort.new
  end    

  def test_bubble_exists
    assert bubble
    assert_instance_of BubbleSort, bubble
  end

  def test_bubble_returns_array 
    assert_instance_of Array, bubble.sort([])
  end

  def test_returns_error_if_not_passed_array
    assert_equal 'error', bubble.sort('yo')
  end

  def test_sort_numbers_and_return_ordered_array
    expected = [1, 2, 3, 4, 7, 9]
    actual   = bubble.sort([1, 4, 9, 3, 2, 7])
    assert_equal actual, expected
  end

  def test_bubble_sort_works_with_strings
    expected = ['a', 'b', 'd', 'f', 'j', 'm', 'x', 'z']
    actual   = bubble.sort(['z', 'd', 'a', 'f', 'b', 'x', 'm', 'j'])
    assert_equal actual, expected    
  end
end