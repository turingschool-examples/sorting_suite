require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_that_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_starts_with_an_empty_sorted_array
    sorter = InsertionSort.new

    assert_equal [], sorter.sorted
  end

  def test_it_has_a_sort_method
    sorter = InsertionSort.new

    assert sorter.sort(["d", "b", "a", "c"])
  end

  def test_sort_takes_an_argument_suite
    sorter = InsertionSort.new
    sorter.sort(["d", "b", "a", "c"])

    assert_equal ["d", "b", "a", "c"], sorter.suite
  end


end


# sorter = InsertionSort.new
# => #<InsertionSort:0x007f81a19e94e8>
# sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]
