require 'pry'

class BubbleSort

  def asks_user_for_an_input
    print "Please enter alphabets or a number: "
    @user_input = gets.chomp.split("")
    @length = @user_input.length
  end

  def sort
    asks_user_for_an_input
    count = 0
    while count < @length
      previous = @user_input[count]
      current = @user_input[count + 1]
      count += 1
    end
  end

end

BubbleSort.new.sort
