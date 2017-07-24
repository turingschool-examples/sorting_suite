require 'pry'

class BubbleSort

  def bubble_sort(list)
    sorted = true
    while sorted do
      sorted = false
      0.upto(list.length - 2) do |index|
        if list[index] > list[index + 1]
          list[index], list[index + 1] = list[index + 1], list[index]
          sorted = true
        end
      end
    end
    list
  end
end
