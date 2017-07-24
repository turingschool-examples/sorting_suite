require './insertion/lib/insertion_sort'
require 'minitest/autorun'
require 'minitest/emoji'

class InsertionSortTest < Minitest::Test

  def setup
    @is = InsertionSort.new
  end

  def test_it_exists
    assert_instance_of InsertionSort, @is
  end

  def test_it_sorts_a_small_list
    list = [2,3,1,4,0]
    assert_equal [0,1,2,3,4], @is.insertion_sort(list)
  end

  def test_it_sorts_a_larger_list
    list = [2,0,1,9,3,4,8,5,7,6]
    assert_equal [0,1,2,3,4,5,6,7,8,9], @is.insertion_sort(list)
  end

  def test_it_sorts_a_really_really_ridiculously_good_looking_test
    list = (0..5000).to_a
    list.shuffle
    assert_equal list.sort, @is.insertion_sort(list)
  end

end
