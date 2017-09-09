gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort'

class TestBubbleSort < Minitest::Test

  def test_it_exits
    bubble_sort = BubbleSort.new

    assert_instance_of BubbleSort, bubble_sort
  end

  def test_advances_current
    bubble_sort = BubbleSort.new
    current = 0

    assert_equal 1, bubble_sort.adv_current(current)
  end

  def test_advances_previous
    bubble_sort = BubbleSort.new
    previous = 0
    
    assert_equal 1, bubble_sort.adv_previous(previous)
  end
end
