class InsertionSort
  def sort
    for i in 1...a.length
    k = a[i]
    j = i - 1
    while j >= 0 && a[j] > k
      a[j+1] = a[j]
      j = j - 1
    end
    a[j+1] = k
    p a
  end
  a
end

a = (["d", "b", "a", "c"])
a.sort

end
