require 'minitest/autorun'
require 'minitest/emoji'

require './insertion/lib/insertion_sort'


class InsertionSortTest < Minitest::Test

  def test_insert_safe_sorts
    original = [1,4,2,3,4,5,6,7,5,4,3,3,3,5,6,7,2]
    assert_equal original.sort, InsertionSort.new.sort(original)
  end

  def test_insert_bang_sorts
    original = [1,4,2,3,4,5,6,7,5,4,3,3,3,5,6,7,2]
    assert_equal original.sort, InsertionSort.new.sort!(original)
  end

  def test_sort_safe_doesnt_change_the_source
    original = [1,4,2,3,4,5,6,7,5,4,3,3,3,5,6,7,2]
    argument = original.dup
    InsertionSort.new.sort argument
    assert_equal original, argument
  end

  def test_sort_bang_sorts_in_place
    original = [1,4,2,3,4,5,6,7,5,4,3,3,3,5,6,7,2]
    sorted = InsertionSort.new.sort!(original)
    assert sorted.equal?(original)
  end

  def test_sort_safe_works_with_arbitrary_numbers
    original = Array.new(1000){ rand(-100_000..100_000) }
    assert_equal original.sort, InsertionSort.new.sort(original)
  end

  def test_sort_bang_works_with_arbitrary_numbers
    original = Array.new(1000){ rand(-100_000..100_000) }
    assert_equal original.sort, InsertionSort.new.sort!(original)
  end

  def test_sort_safe_works_with_strings
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
    assert_equal original.sort, InsertionSort.new.sort(original)
  end

  def test_sort_bang_works_with_strings
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
    assert_equal original.sort, InsertionSort.new.sort!(original)
  end

end
