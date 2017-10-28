class MergeSort
  attr_reader :sorted, :numbers

  def initialize(collection)
    @numbers = collection
    @sorted = []
  end

  def sort
    spliter(numbers)
  end

  def spliter(numbers)
    split = numbers.group_by.with_index do |index, number|
      index.odd?
    end
    even_split = split[true]
    odd_split = split[false]
    # return if even_split.nil? || odd_split.nil?
    spliter(even_split) if even_split.count > 2
    spliter(odd_split) if odd_split.count > 2
    compare(even_split, odd_split)

  end

  def compare(even_split, odd_split)
    even_split.map.with_index do |index, value|
      result = value <=> odd_split[index]
      if result == 1
        sorted
      elsif result == -1

      end
    end
  end

end
