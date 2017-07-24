require 'pry'
require 'benchmark'


class InsertionSort

  def insert(unsorted_items)
    # unsorted_items
    @sorted_items = []
    @sorted_items[0] = unsorted_items.shift
    until unsorted_items.empty?
      to_place = unsorted_items[0]
      order_in_new_array(to_place) #method below
      unsorted_items.shift
    end
    @sorted_items
  end

  def order_in_new_array(to_be_placed_in_order)
    @sorted_items.each.with_index do |order, index|
      if @sorted_items.length == 0
        @sorted_items[0] = to_be_placed_in_order
      elsif order > to_be_placed_in_order
          @sorted_items.insert(index,to_be_placed_in_order)
          break
        elsif @sorted_items.length == index + 1
          @sorted_items << to_be_placed_in_order
          break
        end
      end
  end
end

  time = Benchmark.measure do
    sorter = InsertionSort.new
    p sorter.insert(%w(b d f m z t r q o p w c e f j u l x n))
  end
  puts time
