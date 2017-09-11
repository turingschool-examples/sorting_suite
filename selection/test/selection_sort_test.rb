gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/selection_sort'

class TestSelectionSort < Minitest::Test

  def test_it_exists
    selection = SelectionSort.new

    assert_instance_of SelectionSort, selection
  end

end
