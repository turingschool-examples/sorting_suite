class InsertionSort
  attr_reader :sorted

  def initialize
    @sorted = []
  end

  def sort(given_array)
    given_array.each do |number|
      if sorted.empty?
        sorted << number
      else
        insertion(number)
      end
    end
    sorted
  end

  def insertion(given_array_number)
    sorted.each.with_index do |number, index|
      if given_array_number > sorted.last
        sorted << given_array_number
      elsif number > given_array_number
        sorted.insert(index, given_array_number)
        break
      end
    end
  end
end
