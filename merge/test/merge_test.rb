require 'simplecov'
SimpleCov.start

require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge'

class MergeSortTest < MiniTest::Test

  def test_merge_sort_exists
    sorter = MergeSort.new
    assert sorter
  end




end
