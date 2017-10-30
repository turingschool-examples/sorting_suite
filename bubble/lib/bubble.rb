=begin  sorter = BubbleSort.new
        => #<BubbleSort:0x007f81a19e94e8>
        sorter.sort(["d", "b", "a", "c"])
        => ["a", "b", "c", "d"]
=end

class BubbleSort

  def sort(field)
    (field.count).times do
      num1 = 0
      num2 = 1
      compare_and_replace_outer_loop(num1, num2, field)
    end
    puts field
  end

 def compare_and_replace_inner_loop(num1, num2, field)
  if (field[num1] <=> field[num2]) == 1
  field[num1], field[num2] = field[num2], field[num1]
  field
  end
 end

 def compare_and_replace_outer_loop(num1, num2, field)
   (field.count).times do
     compare_and_replace_inner_loop(num1,num2, field)
     num1 += 1
     num2 += 1
   end
 end

end
