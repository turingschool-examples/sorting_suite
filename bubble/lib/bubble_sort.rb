require 'pry'
class Bubblesort

  def sort(array)
    new_array = []
    array.each_with_index do |letter, index|
      # if array[0] < array[1]
      #   # do nothing
      # else
      #   d = array[1]
      #   b  = array[0]
      #   new_array = [b, d]
      # end
      # a = array[2]
      #
      # if d < a
      #   # do nothing
      # else
      #   new_array = [b, a, d]
      # end
      #
      # c = array[3]
      # if d < c
      #   # do nothing
      # else
      #   new_array = [b, a, c, d]
      # end

      if array[0] > array[1]
        d = array[1]
        b  = array[0]
        new_array = [b, d]
      end

      a = array[2]
      if d > a
        new_array = [b, a, d]
      end

      c = array[3]
      if d > c
        new_array = [b, a, c, d]
      end

      if b > a
        new_array = [a, b, c, d]
      end





    end
  end
end

bs = Bubblesort.new
bs.sort(["d", "b", "a", "c"])
