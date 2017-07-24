require 'pry'
require 'benchmark'

class MergeSort

  def merge(unsorted_items)
    if unsorted_items.length < 2
      return unsorted_items
    end
    split = []
    unsorted_items.each_slice(1) {|a| split << a}
    until split.empty?
      iterations = (split.length / 2.0).ceil
      sorted = []
      iterations.times do
        if split[1].nil?
          odd = array_comparer(split[0], sorted.last)
          sorted.pop
          sorted << odd
          split.pop
        else
          sorted << array_comparer(split[0], split[1])
          split = split.drop(2)
        end
      end
      unless sorted.length == 1 && split.empty?
        split = sorted
      end
    end
    sorted[0]
  end

  def array_comparer(first, second)
  combined = []
  until first.empty? || second.empty?
    if ( first[0] > second[0])
      combined << second[0]
      second.shift
    else
      combined << first[0]
      first.shift
    end
  end
  until first.empty?
    combined << first[0]
    first.shift
  end
  until second.empty?
    combined << second[0]
    second.shift
  end
  combined
end

end
