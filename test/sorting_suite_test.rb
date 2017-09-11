require "minitest/autorun"
require "minitest/emoji"

require "./lib/sorting_suite"

SortingSuite.each_class do |sort_class|
  describe sort_class do

    attr_accessor :sorter, :basic_numbers
    before do
      @sorter = sort_class.new
      @basic_numbers = [1,4,2,3,4,5,6,7,5,4,3,3,3,5,6,7,2]
    end

    it ("exists") do
      sorter.must_be_instance_of(sort_class)
    end

    describe("sort safe") do
      it("sorts in ascending order") do
        sorter.sort(basic_numbers).must_equal(basic_numbers.sort)
      end
      it("returns a new array") do
        sorter.sort(basic_numbers).wont_be_same_as(basic_numbers)
      end
      it("doesn't change the given array") do
        original_numbers = basic_numbers.dup
        sorter.sort(basic_numbers)
        basic_numbers.must_equal(original_numbers)
      end
    end

    describe("`sort!`") do
      it("sorts in ascending order") do
        sorter.sort!(basic_numbers).must_equal(basic_numbers.sort)
      end
      it("returns the given array") do
        sorter.sort!(basic_numbers).must_be_same_as(basic_numbers)
      end
      it("changes the given array") do
        original_numbers = basic_numbers.dup
        sorter.sort!(basic_numbers)
        basic_numbers.must_equal(original_numbers.sort)
      end
    end

    describe("sorts arrays of") do
      it("nothing") do
        sorter.sort([]).must_equal([])
        sorter.sort!([]).must_equal([])
      end
      it("integers") do
        fixnums = Array.new(1000){ rand(-100_000..100_000) }
        sorter.sort(fixnums).must_equal(fixnums.sort)
        sorter.sort!(fixnums).must_equal(fixnums.sort)
      end
      it("floats") do
        floats = Array.new(1000){ rand(-100_000.0..100_000.0) }
        sorter.sort(floats).must_equal(floats.sort)
        sorter.sort!(floats).must_equal(floats.sort)
      end
      it("strings") do
        strings = %W{
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
        sorter.sort(strings).must_equal(strings.sort)
        sorter.sort!(strings).must_equal(strings.sort)
      end
    end

  end
end
