class Insertion
  def insertion_sort(array)
    sorted = [array.shift]
    array.each do |char|
        sorted_index = 0
        while sorted_index < sorted.length
            if char <= sorted[sorted_index]
                sorted.insert(sorted_index, char)
                break
            elsif sorted_index == sorted.length - 1
                sorted.insert(sorted_index + 1, char)
                break
            end
            sorted_index += 1
        end
    end
    sorted
  end
end


