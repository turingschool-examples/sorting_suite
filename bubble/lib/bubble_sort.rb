class BubbleSort

  def sort(collection)
    collection.length.times do
      previous = collection[0]
      collection.each_with_index do |current, index|
        if current < previous
          collection[index] = previous
          collection[index - 1] = current
        else
          previous = current
        end
      end
    end
    collection
  end
end
