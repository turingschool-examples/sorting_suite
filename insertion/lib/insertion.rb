require 'pry'
class InsertionSort

  def sort(list)
    final = [list[0]]
    list.delete_at(0)

    list.each do |item|
        final_index = 0
        while final_index < final.length
            if item <= final[final_index]
                final.insert(final_index,item)
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,item)
                break
            end
            final_index+=1
        end
    end

    final
  end

end
