require 'minitest/autorun'
require './lib/merge'

class MergeTest < Minitest::Test
  def test_if_merge_class_exist
    merge = Merge.new

    assert_instance_of Merge, merge
  end

  def test_if_sort_method_sort_the_array
    merge = Merge.new

    assert_equal ["a", "b", "c", "d", "e", "f"], merge.sort(["d", "b", "a", "c", "f", "e"])
    assert_equal ["a", "b", "c", "d"], merge.sort(["d", "b", "a", "c"])
  end

  def test_if_sort_method_sorts_the_array
    merge = Merge.new

    assert_equal ["a", "b", "c", "d"], merge.sort(["d", "b", "a", "c"])
  end
end
