require 'pry'
class InsertionSort
  def sort(in_set)
    sorted_array = []
    if in_set.length <= 1
      sorted_array = in_set[0]
    else
      in_set.each_with_index do |element, position|
        if position == 0
          sorted_array << in_set[position]
        else
          sorted_array = rebuild(element, sorted_array)
        end
      end
    end
    sorted_array
  end

  def rebuild(element, sorted_array)
    if element < sorted_array[0]
      sorted_array.unshift(element)
    elsif element > sorted_array.last
      sorted_array.push(element)
    else
      sorted_array.each_with_index do |sorted, index|
        if  index > 0 && element > sorted_array[index -1]
          if element < sorted_array[index]
            sorted_array.insert(index, element)
            break
          end
        end
      end
    end
    sorted_array
  end
end
