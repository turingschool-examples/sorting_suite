class MergeSort

  def sort!(array)
    array.replace(sort(array))
  end

  def sort(array)
    return array if array.length < 2
    halfway = array.length / 2
    merge(
      sort(array[0...halfway]),
      sort(array[halfway...array.length])
    )
  end

  def merge(a, b)
    merged = []
    merged << (a[0] < b[0] ? a.shift : b.shift) until a.empty? || b.empty?
    merged + a + b
  end

end
