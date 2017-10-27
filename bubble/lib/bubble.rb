=begin  sorter = BubbleSort.new
        => #<BubbleSort:0x007f81a19e94e8>
        sorter.sort(["d", "b", "a", "c"])
        => ["a", "b", "c", "d"]
=end

require 'pry'

class Bubble

  attr_reader :field, :previous, :current

  def sort(field)
    @field = field
    compare
  end

  def find_previous
    @previous = @field[0]
  end

  def find_current
    @current = @field[1]
  end

  def compare
    @previous <=> @current
  end

  def swap_value_prev
    @field[@field.index(@previous)]
  end

  def swap_value_cur
    @field[@field.index(@current)]
  end

  def swap
    @field[@field.index(@previous)], @field[@field.index(@current)] = @field[@field.index(@current)], @field[@field.index(@previous)]
  end

  def analyze
      compare
      @field[(@field.index(@previous))..(@field.index(@current))] = swap[0..1] if compare == 1
      move_next
      @field
  end

  def analyze_loop
    5.times do
      analyze
    end
    @field
  end

  def move_next
      if field[field.index(@current)+1].nil?
        @current = nil
      else
        @previous = field[field.index(@previous)+1]
        @current = field[field.index(@current)+1]
      end
  end

end
