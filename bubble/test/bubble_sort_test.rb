require 'minitest/autorun'
require 'minitest/emoji'

require './bubble/lib/bubble_sort'


class BubbleSortTest < Minitest::Test

  def test_sort_safe_doesnt_change_the_source
    original = [1,4,2,3,4,5,6,7,5,4,3,3,3,5,6,7,2]
    argument = original.dup
    sorted = BubbleSort.new.sort argument

    assert_equal original.sort, sorted
    assert_equal original, argument
  end

  def test_sort_bang_sorts_in_place
    original = [1,4,2,3,4,5,6,7,5,4,3,3,3,5,6,7,2]
    argument = original.dup
    sorted = BubbleSort.new.sort! argument

    assert_equal original.sort, sorted
    assert_equal original.sort, argument
  end

  def test_works_with_arbitrary_numbers
    original = Array.new(1000){ rand(-1000..1000) }
    argument = original.dup
    sorted = BubbleSort.new.sort argument

    assert_equal original.sort, sorted
    assert_equal original, argument
  end

  def test_works_with_strings
    original = %W{
      sharknado
      hello
      helLo
      90063
      90053
      what's\ up?
      forward\\slash
      FoO!
      @$%^&*
      *&^%$@
    }
    argument = original.dup
    sorted = BubbleSort.new.sort argument

    assert_equal original.sort, sorted
    assert_equal original, argument
  end

end
