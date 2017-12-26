class InsertionSort
  def initialize
    @sorted = []
  end

  def sort(collection)
    insert(collection.shift)
    if collection.empty?
      return @sorted
    else
      sort(collection)
    end
  end

  def insert(to_insert)
    index = @sorted.index do |current|
      to_insert < current
    end
    if index.nil?
      @sorted << to_insert
    else
      @sorted.insert(index, to_insert)
    end
  end
end
