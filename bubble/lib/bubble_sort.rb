require 'pry'
class BubbleSort

  def sort(collection)
    collection.each_with_index do |element, index|
      binding.pry
      previous = element
      current = collection[index + 1]
      if previous > current
        collection[index] = current
        collection[index + 1] = previous
      end
    end
    collection
  end
end
binding.pry
