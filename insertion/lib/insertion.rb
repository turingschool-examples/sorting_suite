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

end
