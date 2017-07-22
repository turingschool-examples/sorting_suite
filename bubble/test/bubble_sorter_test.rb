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

def test_it_can_compare_two_elements
  bubble = BubbleSorter.new([21,3, 5])
  assert_equal [3,21, 5], bubble.compare_two_elements
end

end
