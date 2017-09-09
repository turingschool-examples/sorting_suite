require 'pry'
class BubbleSort

  def sort(source)
    source.dup.sort!
  end

  def sort!(array)
    loop do
      found_pass = false
      bubble = array.shift
      array.each_with_index do |compare, compare_at|
        if bubble < compare
          array[compare_at], bubble = bubble, array[compare_at]
        elsif bubble > compare
          found_pass = true
        end
      end
      array.push bubble
      break unless found_pass
    end
    array
  end

end
