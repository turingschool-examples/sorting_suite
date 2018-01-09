require "minitest/autorun"
require "minitest/pride"
require "./lib/insertion_sort"
require "pry"

class InsertionSortTest < Minitest::Test

  def test_insertion_sort_exists
    insertion = InsertionSort.new

    assert_instance_of InsertionSort, insertion
  end

  def test_insertion_sort_sorts
    insertion = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], insertion.sort(["d", "b", "a", "c"])
  end

  def test_start_format_for_conversion_to_an_array_of_numbers
    insertion = InsertionSort.new 

    assert_equal [100, 98, 97, 99], insertion.start_format(["d", "b", "a", "c"])
  end

  def test_finish_format_for_conversion_from_numbers_to_letters
    insertion = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], insertion.finish_format([97, 98, 99, 100])
  end

  def test_insertion_sort_for_bad_input
    insertion = InsertionSort.new

    assert_equal "Please put in letters or numbers.", insertion.pre_sort([true])
    assert_equal "Sorting...", insertion.pre_sort(["a"])
  end

end
