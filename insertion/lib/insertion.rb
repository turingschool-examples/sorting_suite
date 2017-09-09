require 'pry'
class InsertionSort

  def sort(list)
    final = [list[0]]
    list.delete_at(0)

    for i in list
        final_index = 0
        while final_index < final.length
            if i <= final[final_index]
                final.insert(final_index,i)
                break
                binding.pry
            elsif final_index == final.length-1
                final.insert(final_index+1,i)
                break
            end
            final_index+=1
        end
    end
    binding.pry

    final
  end

  # def sort(list)
  #   length = list.length
  #
  #   sorted_list = list.shift
  #   unsorted_list = list
  #
  #
  # end

#   function insertionSortR(array A, int n)
#     if n>0
#        insertionSortR(A,n-1)
#        x ← A[n]
#        j ← n-1
#        while j >= 0 and A[j] > x
#            A[j+1] ← A[j]
#            j ← j-1
#        end while
#        A[j+1] ← x
#     end if
# end function
end
