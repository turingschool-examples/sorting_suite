=begin  sorter = BubbleSort.new
        => #<BubbleSort:0x007f81a19e94e8>
        sorter.sort(["d", "b", "a", "c"])
        => ["a", "b", "c", "d"]
=end

class Bubble

  def sort(field)
    @field = field
  end

  def previous
    @field[0]
  end

end
