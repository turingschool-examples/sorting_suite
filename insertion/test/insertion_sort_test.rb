require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_instance_exists
    sorter = InsertionSort.new(["d", "b", "a", "c"])

    assert_instance_of InsertionSort, sorter
  end

  def test_it_sorts_two
    sorter = InsertionSort.new(["d", "b"])
    result = sorter.sort

    assert_equal ["b", "d"], result
  end

  def test_sorter_sorts_more_than_2
    sorter = InsertionSort.new(["d", "b", "a", "c"])
    result = sorter.sort

    assert_equal ["a", "b", "c", "d"], result
  end

  def test_when_only_first_and_last_need_to_be_sorted
    sorter = InsertionSort.new(["d", "b", "c", "a"])
    result = sorter.sort

    assert_equal ["a", "b", "c", "d"], result

  end



end
