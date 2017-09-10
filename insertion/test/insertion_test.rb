gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/insertion'

class TestInsertion < Minitest::Test

  def test_it_exists
    insertion = Insertion.new

    assert_instance_of Insertion, insertion
  end

end
