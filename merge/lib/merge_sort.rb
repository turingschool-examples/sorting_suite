class MergeSort

    def merge_sort(numbers)
       
        return numbers if numbers.count <= 1     
       

        middle = numbers.length / 2
        half_a = merge_sort(numbers.slice(0,middle))
        half_b = merge_sort(numbers.slice(middle, numbers.count - middle))
    
        sorted_nums = []
        index_a = 0
        index_b = 0

        while index_a < half_a.length && index_b < half_b.length
            a = half_a[index_a]    
            b = half_b[index_b]
            
            if a <= b
                sorted_nums << a
                index_a += 1
            else
                sorted_nums << b
                index_b += 1
            end 
        end 

        while index_a < half_a.count
            sorted_nums << half_a[index_a]
            index_a += 1
        end 
    
        while index_b < half_b.count
            sorted_nums << half_b[index_b]
            index_b += 1
        end 
        
        return sorted_nums
    end 
end