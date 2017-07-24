require 'pry'

class Insertion

  def sort(array)
    results = [array.shift]
    array.each do |unit|
        n = 0
        while n < results.length
          if unit <= results[n]
            results.insert(n, unit)
            break
          elsif n == results.length - 1
            results.insert(n + 1, unit)
            break
          end
          n += 1
        end
    end
    results
  end

end
