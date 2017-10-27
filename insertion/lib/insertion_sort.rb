class InsertionSort
  def self.sort(to_sort)
    sorted = []
    to_sort.count.times do
      to_insert = to_sort.shift
      if sorted.count == 0
        sorted << to_insert
      elsif
        (sorted.count).times do |time|
          if sorted[time] > to_insert
            sorted.insert(time, to_insert)
            break
          elsif sorted[time] < to_insert && sorted[time+1].nil?
            sorted.insert(time+1, to_insert)
            break
          elsif sorted[time] < to_insert && sorted[time+1] > to_insert
            sorted.insert(time+1, to_insert)
            break
          end
        end
      end
    end
    sorted
  end

end
