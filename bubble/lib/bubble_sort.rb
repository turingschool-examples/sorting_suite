class BubbleSort

    
    def sort (numbers)
        n = numbers.length
        
        loop do 
            swapped = false
            (n-1).times do |i|
                #require 'pry'; binding.pry
                
                if numbers[i] > numbers[i + 1]
                    numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
                    swapped = true
                end 

            end 
            break unless swapped
        end
        numbers         
    end 
end 

