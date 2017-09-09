require "pry"
class BubbleSort

  def sort(array)
    return array if array.length <= 1
    count = 0
    length = array.length - 1
    length.times do |index|
      if array[index] > array[index + 1]
        array[index], array[index+1] = array[index+1], array[index]
        count = 1
      end
    end
    sort(array) if count == 1
    array
  end

end
