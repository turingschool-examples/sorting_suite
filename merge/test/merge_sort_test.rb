require './lib/merge_sort'
require 'minitest/autorun'

class MergeSortTest < Minitest::Test

    def test_it_sorts_arrays_of_data
        sorter = MergeSort.new 

        assert_equal [1,2,3,4,5], sorter.merge_sort([5,4,3,2,1])
        assert_equal [1,2,3,4,5,6,7,8,9,10], sorter.merge_sort([1,5,2,3,6,7,9,8,4,10])
    end
end 