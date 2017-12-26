class BubbleSort
  def initialize
    @previous = nil
    @current = nil
  end

  def sort(collection)
    @previous = collection[0]
    @current = collection[1]
  end

  def swap?
    @previous > @current
  end
end
