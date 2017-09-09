class BubbleSort

  def sort(argue)
    swap = true
    while swap == true
      swap = false
      count = argue.length - 1
      count.times do |obj|
        if argue[obj] > argue[obj + 1]
          swap = true
          argue[obj], argue[obj + 1] = argue[obj + 1], argue[obj]
        end
      end   
    end
    argue
  end
end


