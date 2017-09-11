class MergeSort

  def sort(list)
    return list if list.length <= 1
    length = list.length

    mid_point = (length/ 2).to_i
    left_array = list[0..mid_point-1]
    right_array = list[mid_point..length-1]

      left = sort(left_array)
      right = sort(right_array)

      merge(left, right)
    end
  end

  def merge(array_1, array_2)
   sorted = []
   until array_1.empty? || array_2.empty?
     sorted << if array_1.first <= array_2.first
                array_1.shift
              else
                array_2.shift
              end
    end
  sorted.concat(array_1).concat(array_2)
  end
