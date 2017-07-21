class InsertionSort
  def sort(in_set)
    if in_set.length <= 1
      result_set = in_set[0]
    else
      sorted_array = []
      in_set.each_with_index do |element, outside|
        if outside == 0
          sorted_array << in_set[outside]
        else
          sorted_array.each_with_index do |sorted, inside|
            if in_set[outside] > sorted[inside]
              sorted_array.insert(inside, inset[outside]
            end
          end
        end
      end
    end
    result_set
  end
end
