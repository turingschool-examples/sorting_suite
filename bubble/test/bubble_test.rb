require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < MiniTest::Test

  def test_it_exists
    sorter = BubbleSort.new([1,2,3,4,5])

    assert_instance_of BubbleSort, sorter
  end

  def test_it_can_return_array
    sorter = BubbleSort.new([1,2,3,4,5])

    assert [1,2,3,4,5], sorter.array
  end

  def test_it_can_sort_first_two_elements
    sorter = BubbleSort.new([2,1,3,4,5])

    assert [1,2,3,4,5], sorter.sort
  end

  def test_it_can_sort_last_two_elements
    sorter = BubbleSort.new([1,2,3,5,4])

    assert [1,2,3,4,5], sorter.sort
  end

  def test_it_can_sort_any_two_elements
    sorter = BubbleSort.new([1,3,2,4,5])

    assert [1,2,3,4,5], sorter.sort
  end

  def test_it_can_sort_multiple_elements
    sorter = BubbleSort.new([4,2,3,1,5])

    assert [1,2,3,4,5], sorter.sort
  end

  def test_it_can_sort_letters
    sorter = BubbleSort.new(["b", "a", "d", "c"])

    assert ["a", "b", "c", "d"], sorter.sort
  end
end
