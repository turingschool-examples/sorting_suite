require 'minitest/autorun'
require 'minitest/pride'
require './lib/first_attempt_bubble_sort'

class FirstAttemptBubbleSortTest < MiniTest::Test

  def test_it_exists
    assert_instance_of FirstAttemptBubbleSort, FirstAttemptBubbleSort.new([2, 1, 0])
  end

  def test_it_has_an_original_list
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal [2, 1, 0], bubble_sort.original
  end

  def test_it_can_count_the_number_of_elements
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal 3, bubble_sort.count
  end

  def test_it_can_count_the_number_of_swaps
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal 0, bubble_sort.number_of_swaps
  end

  def test_it_defaults_current_index_to_1
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal 1, bubble_sort.current_index
  end

  def test_previous_index_is_one_less_than_current_index
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal (bubble_sort.current_index - 1), bubble_sort.previous_index
  end

  def test_it_can_determine_the_value_at_the_current_index
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal 1, bubble_sort.value(bubble_sort.current_index)
  end

  def test_it_can_determine_the_value_at_the_previous_index
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal 2, bubble_sort.value(bubble_sort.previous_index)
  end

  def test_it_compares_the_current_and_previous_node
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])
    current_value = bubble_sort.value(bubble_sort.current_index)
    previous_value = bubble_sort.value(bubble_sort.previous_index)

    assert previous_value > current_value
  end

  def it_can_return_the_values_at_current_and_previous_indices
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal 1, bubble_sort.current_value
    assert_equal 2, bubble_sort.previous_value
  end

  def test_it_can_create_array_of_compared_values
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal [2, 1], bubble_sort.compared_values
  end

  def test_it_can_swap_positions_of_elements
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal 1, bubble_sort.value(bubble_sort.current_index)
    assert_equal 2, bubble_sort.value(bubble_sort.previous_index)

    bubble_sort.swap

    assert_equal 2, bubble_sort.current_value
    assert_equal 1, bubble_sort.previous_value
  end

  def test_it_updates_swap_count_after_a_swap
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    bubble_sort.swap

    assert_equal 1, bubble_sort.number_of_swaps
  end

  def test_current_order_is_original_by_default
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal [2, 1, 0], bubble_sort.current_order
  end

  def test_it_can_return_the_current_array_after_a_swap
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    bubble_sort.swap

    assert_equal [1 , 2, 0], bubble_sort.current_order
  end

  def test_it_has_a_sorted_list
    skip
    bubble_sort = FirstAttemptBubbleSort.new([2, 1, 0])

    assert_equal [0, 1, 2], bubble_sort.sorted
  end

end
