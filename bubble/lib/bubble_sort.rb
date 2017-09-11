require "pry"
class BubbleSort
  def sort(array)
    return array if array.length <= 1
    length = array.length - 1
    sorting(array, length)
  end

  def sorting(array, length, count = 0)
    length.times do |index|
      if array[index] > array[index + 1]
        count = 1
        array[index], array[index+1] = array[index+1], array[index]
      end
    end
    sort(array) if count == 1
    array
  end
end
