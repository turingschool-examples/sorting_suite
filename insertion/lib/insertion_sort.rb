class InsertionSort
  attr_reader :post

  def initialize
    @post = []
  end

  def insert_first(collection)
    if @post.empty?
      @post << collection.shift
    end
    collection
  end
end
