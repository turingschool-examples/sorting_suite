class InsertionSort

  attr_reader :collection

  def initialize(collection)
    @collection = collection
  end

  def sort
    collection_length = collection.length
    count = 0
    while count < collection_length
      current = collection[count]
      num = count
      while num > 0 && collection[num - 1] > current
        collection[num] = collection[num - 1]
        num -= 1
      end
      collection[num] = current
      count += 1
    end
    return collection
  end

end
