require './lib/insertion'
require 'pry'
require 'minitest/autorun'
require 'minitest/emoji'

class InsertionTest < Minitest::Test

  def test_bubble_sort
    insertion = Insertion.new
    assert_equal [0, 1, 2], insertion.sort([2, 1, 0])
    assert_equal [0, 1, 2, 3, 4], insertion.sort([2, 4, 3, 1, 0])
    assert_equal ['a', 'b', 'c', 'd'], insertion.sort(['d', 'a', 'b', 'c'])
    assert_equal ['Apple', 'Bananna', 'Cucumber'], insertion.sort(['Bananna', 'Cucumber', 'Apple'])
  end

end
