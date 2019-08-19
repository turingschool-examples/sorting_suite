class BubbleSort
  def sort(num)
    swap = true
    while swap == true
      swap = false
      count = num.length - 1
      count.times do |obj|
        if num[obj] > num[obj + 1]
          swap = true
          num[obj], num[obj + 1] = num[obj + 1], num[obj]
        end
      end   
    end
    num
  end
end