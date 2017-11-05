class BubbleSort

  attr_reader :collection

  def initialize(collection)
    @collection = collection
  end

  def bubble_sort
    swapped = true
    n = collection.length
    while swapped == true
      swapped = false
      (n-1).times do |i|
        if collection[i] > collection[i + 1]
          collection[i], collection[i+1] = collection[i+1], collection[i]
          swapped = true
        end
      end
    end
    collection
  end
end
