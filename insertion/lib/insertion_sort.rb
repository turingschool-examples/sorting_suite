class InsertionSort

    def insertion_sort(unsorted)
        sorted = [unsorted[0]]
        unsorted.delete_at(0)

        for n in unsorted
            sorted_index = 0

            while sorted_index < sorted.length

                if n <= sorted[sorted_index]
                    sorted.insert(sorted_index, n)
                    break
                elsif sorted_index == sorted.length-1
                    sorted.insert(sorted_index+1, n)
                    break
                end 
        
                sorted_index += 1
            end 
        end
        sorted  
    end 
end 