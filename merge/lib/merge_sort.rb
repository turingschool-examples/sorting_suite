class MergeSort

  def sort(numbers)
    size = numbers.count
    a_half = numbers[(0..(size-1)/2)]
    b_half = numbers[((-1)*size/2..-1)]
    sort(a_half) if a_half.count > 1
    sort(b_half) if b_half.count > 1
    sorted_half = compare(a_half, b_half)
    # full_sort = compare(sorted_half, b_half)
  end

  def compare(half_1, half_2)
    p half_1, half_2
  end

end
