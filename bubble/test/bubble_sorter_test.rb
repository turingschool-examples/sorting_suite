gem 'minitest'
require_relative '../lib/bubble_sorter'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BubbleSorterTest < Minitest::Test

 def test_it_takes_an_array
   bubble = BubbleSorter.new([1,2,3])
   assert_equal [1,2,3],bubble.array
 end

def test_it_can_compare_three_elements
  bubble = BubbleSorter.new([21,3, 5])
  assert_equal [3,5,21], bubble.compare_elements
end

def test_it_can_compare_four_elements
bubble = BubbleSorter.new([4, 3, 2, 1])
assert_equal [1, 2, 3, 4], bubble.call_comparison_again

end

def test_it_can_compare_more_elements
bubble = BubbleSorter.new([215, 30, 12, 4, 6, 1])
assert_equal [1, 4, 6, 12, 30, 215], bubble.call_comparison_again
end

def test_it_can_compare_letters
  bubble = BubbleSorter.new(['c','d','b','a'])
  assert_equal ['a','b','c','d'], bubble.call_comparison_again
end

def test_it_can_compare_negatives
  bubble = BubbleSorter.new([6, -1, -5])
  assert_equal [-5, -1, 6], bubble.call_comparison_again
end

end
