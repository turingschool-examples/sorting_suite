module SortingSuite; end

require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'selection_sort'
require_relative 'merge_sort'

module SortingSuite
  def self.each_class(&block)
    [
      BubbleSort,
      InsertionSort,
      SelectionSort,
      MergeSort
    ].each(&block)
  end
end
