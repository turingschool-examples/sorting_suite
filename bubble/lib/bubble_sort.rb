require 'pry'
class BubbleSort

  def sort(source)
    self.sort!(source.dup)
  end

  def sort!(array)
    loop do
      run_without_changes = true
      bubble = array.shift
      array.each_with_index do |compare_to, compare_at|
        if bubble < compare_to
          array[compare_at], bubble = bubble, array[compare_at]
        elsif bubble > compare_to
          run_without_changes = false
        end
      end
      array << bubble
      break if run_without_changes
    end
    array
  end

end
