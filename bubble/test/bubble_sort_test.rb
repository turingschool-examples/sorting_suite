require './bubble/lib/bubble_sort'
require 'minitest/autorun'
require 'minitest/emoji'

class BubbleSortTest < Minitest::Test

  def setup
    @bs = BubbleSort.new
  end

  def test_it_exists
    assert_instance_of BubbleSort, @bs
  end

  def test_it_sorts_small_list
    list = [3,2,1,4,0]
    assert_equal [0,1,2,3,4], @bs.bubble_sort(list)
  end

  def test_it_sorts_a_larger_list
    list = [2,0,1,9,3,4,8,5,7,6]
    assert_equal [0,1,2,3,4,5,6,7,8,9], @bs.bubble_sort(list)
  end

  def test_it_sorts_a_really_really_ridiculously_good_looking_list
    list = (0..5000).to_a
    list.shuffle
    assert_equal (0..5000).to_a, @bs.bubble_sort(list)
  end
end
