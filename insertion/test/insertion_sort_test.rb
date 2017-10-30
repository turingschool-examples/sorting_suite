require 'minitest/autorun'
require 'minitest/pride'
require './insertion/lib/insertion_sort'

class InsertionTest < Minitest::Test
  def test_it_exists
    ins = Insertion.new

    assert_instance_of Insertion, ins
  end
end
