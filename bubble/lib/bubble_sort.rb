require 'pry'

class Array
  def sort
    n = self.length

    loop do
      swapped = false

      (n-1).times do |i|
        if self[i] > self[i+1]
          self[i], self[i+1] = self[i+1], self[i]
          swapped = true
        end
      end
      break unless swapped
    end

    self
  end
end

arr = (["d", "b", "a", "c"])
arr.sort
