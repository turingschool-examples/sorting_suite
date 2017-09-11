require "minitest"
require "minitest/autorun"
require "./lib/insertion_sort.rb"



class InsertionSortTest < Minitest::Test

  def test_it_exists
    sorter = InsertionSort.new
    assert_instance_of InsertionSort, sorter
  end

  def test_it_can_sort_numbers
    sorter = InsertionSort.new
    assert_equal  [1, 2, 3, 4], sorter.sort([2, 4, 3, 1])
  end

  def test_it_can_sort_letters
    sorter = InsertionSort.new
    assert_equal  ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

end

#
# sorter = InsertionSort.new
# => #<InsertionSort:0x007f81a19e94e8>
# sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]
