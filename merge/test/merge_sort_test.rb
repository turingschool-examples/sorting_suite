gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merge_sort'

class TestMergeSort < Minitest::Test

  def test_it_exists
    merge_sort = MergeSort.new

    assert_instance_of MergeSort, merge_sort
  end

end
