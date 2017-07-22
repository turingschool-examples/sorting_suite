require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion'

class InsertionTest < Minitest::Test
  def test_insertion_class_exists
    sorter = Insertion.new
    assert_instance_of Insertion, sorter
  end

  # def test_sorted_inserts_first_element_of_unsorted
  #   sorter = Insertion.new
  #   assert_equal ["d"], sorter.sort(["d"])
  # end


  def test_insertion_has_method_sort
    sorter = Insertion.new
    assert_equal ["a","b","c","d"], sorter.sort(["d", "b", "a", "c"])
  end
end
