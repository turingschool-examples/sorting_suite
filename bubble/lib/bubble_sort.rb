require 'pry'

class BubbleSort

  attr_reader :list

  def list
    @list = Array.new(1001) { rand(0...1000) }
  end

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
