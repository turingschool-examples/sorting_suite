
class MergeSort

    def merge(left, right)
      sorted = []
      l = 0
      r = 0
      loop do
        break if left >= left.length && right >= right.length
        if r >= right.length || (l < left.length & left[l] < right[r])
          sorted << left[l]
          left += 1
        else
          sorted << right[r]
          right += 1
        end
        sorted
      end
    end
end
