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

  def test_if_first_array_method_is_working
    merge = Merge.new

    assert_equal ["a", "b"], merge.first_array([], ["b", "a"])
    assert_equal ["a", "b", "c", "d"], merge.first_array(["a", "c"], ["d", "b"])
  end

  def test_if_positioning_method_is_working
    merge = Merge.new

    assert_equal ["a", "b", "c", "d"], merge.positioning(["d", "b"], ["a", "c"])
  end

  def test_
    merge = Merge.new

    assert_equal ["a", "b", "c", "d"], merge.positioning_single_element("b", ["a", "c", "d"], 0)
  end

end
