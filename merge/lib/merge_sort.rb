class MergeSort

  def sort(a)
    if a.length <= 1
      a
    else
      m = (a.length / 2).floor
      l = sort(a[0..m - 1])
      r = sort(a[m..a.length])
      merge(l,r)
    end
  end

  def merge(l, r)
    if l.empty?
      r
    elsif r.empty?
      l
    elsif l.first < r.first
      [l.first] + merge(l[1..l.length],r)
    else
      [r.first] + merge(l, r[1..r.length])
    end
  end

end
