require 'pry'

class BubbleSort

  def asks_user_for_an_input
    print "Please enter alphabets or a number: "
    @user_input = gets.chomp.split("")
    @length = @user_input.length
  end

  def sort
    asks_user_for_an_input
    number = 0
    while number < (@length - 1)
      count = 0
      while count < (@length - 1)
        previous = @user_input[count]
        current = @user_input[count + 1]
        if current < previous
          @user_input[count], @user_input[count + 1] = @user_input[count + 1], @user_input[count]
        else
          @user_input[count], @user_input[count + 1] = @user_input[count], @user_input[count + 1]
        end
        count += 1
      end
      number += 1
    end
    binding.pry
  end

end

BubbleSort.new.sort
