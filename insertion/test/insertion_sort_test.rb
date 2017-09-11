require 'minitest/autorun'
require 'minitest/pride'
require "./lib/insertion_sort"

class InsertionSortTest < MiniTest::Test

  def test_exist?
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end


  def test_insertion_sort_letters
    sorter = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], sorter.insertion_sort(["d","b","a","c"])
  end

  def test_insertion_sort_numbers
    sorter = InsertionSort.new

    assert_equal [1, 2, 3, 4, 5, 6, 7,8, 9, 10], sorter.insertion_sort([8,5,4,2,1,3,6,7,9,10])
  end
end
