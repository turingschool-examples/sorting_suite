require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/sortingsuite'

class SortingsuiteTest < Minitest::Test

  def test_it_exists
    suite = Sortingsuite.new

    assert_instance_of Sortingsuite, suite
  end

end
