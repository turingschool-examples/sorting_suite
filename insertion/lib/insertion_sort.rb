class InsertionSort
  attr_reader :suite,
              :sorted

  def initialize
    @sorted = []
  end

  def sort(suite)
    @suite = suite
  end
end
