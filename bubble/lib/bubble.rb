=begin  sorter = BubbleSort.new
        => #<BubbleSort:0x007f81a19e94e8>
        sorter.sort(["d", "b", "a", "c"])
        => ["a", "b", "c", "d"]
=end

class Bubble

  attr_reader :field

  def sort(field)
    @field = field
    compare
  end

  def previous
    @previous = @field[0]
  end

  def current
    @current = @field[1]
  end

  def compare
    @previous <=> @current
  end

  def change
    compare
    if compare == -1
      @previous, @current = @current, @previous
    end
  end

end
