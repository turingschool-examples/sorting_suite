require 'simplecov'
SimpleCov.start

require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble'

class BubbleTest < MiniTest::Test

  def test_class_exists
    bubble = BubbleSort.new
    assert_instance_of BubbleSort, bubble
  end

end
