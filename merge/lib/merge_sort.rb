require_relative "merge"

class MergeSort

  def sort(to_sort)
    def merge(left, right)
    sorted = []
    l = 0
    r = 0
    loop do
      break if r >= right.length && l >= left.length
      if r >= right.length || (l < left.length && left[l] < right[r])
        sorted << left[l]
        l += 1
      else
        sorted << right[r]
        r += 1
      end
    end
    return sorted
    end

    def merge_sort(letters)
      return letters if letters.length <= 1
      mid = letters.length / 2
      left = merge_sort(letters[0..mid - 1])
      right = merge_sort(letters[mid..-1])
      return merge(left, right)
    end
    merge_sort(to_sort)
  end

end
