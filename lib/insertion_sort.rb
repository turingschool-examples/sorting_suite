class SortingSuite::InsertionSort

  def sort(source)
    sorted = []
    source.each do |to_insert|
      sorted.each_with_index do |compare_to, compare_at|
        if to_insert <= compare_to
          # require 'pry'; binding.pry
          sorted.insert(compare_at, to_insert)
          to_insert = nil
          break
        end
      end
      sorted << to_insert unless to_insert.nil?
      # nil isn't comparable anyway, so this is fine
    end
    sorted
  end


  def sort!(array)
    return [] if array.empty?
    sorted_upto = 0
    until sorted_upto == (array.length - 1)
      to_insert = array.pop
      0.upto(sorted_upto) do |compare_at|
        if to_insert <= array[compare_at]
          array.insert(compare_at, to_insert)
          to_insert = nil
          break
        end
      end
      array.insert(sorted_upto + 1, to_insert) unless to_insert.nil?
      sorted_upto += 1
    end
    array
  end

  def pe(b, expression)
    puts "#{expression} ---> #{eval(expression, b).inspect}"
  end

end
