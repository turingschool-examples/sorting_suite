class BubbleSort
  attr_reader :suite

  def sort(suite)
    @suite = suite
    swapped = true
    while swapped
      swapped = false
      0.upto(suite.size-2) do |i|
        if suite[i] > suite[i+1]
          suite[i], suite[i+1] = suite[i+1], suite[i]
          swapped = true
        end
      end
    end
    suite
  end
end
