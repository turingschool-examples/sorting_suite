gem 'minitest'
require './bubble/lib/bubble_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BubbleSortTest < Minitest::Test

  def test_if_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  




end
