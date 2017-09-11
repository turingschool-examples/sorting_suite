class InsertionSort

  def sort(array)
    result = []
    until array.empty?
      to_insert = array.shift
      result = insert(result, to_insert)
    end
    result

  end

  def insert(array, to_insert)

    if array.empty?
      array[0] = to_insert

    else
      array.length.times do |index|
        if to_insert < array[index]
          array.insert(index, to_insert)
          return array
        end
      end
      array.push(to_insert)
    end
    array

  end
end
