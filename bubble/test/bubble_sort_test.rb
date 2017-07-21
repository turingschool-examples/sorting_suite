require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './bubble/lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_instance_of_bs
    bs = BubbleSort.new
    assert bs
    assert_instance_of BubbleSort, bs
  end

end
