require 'pry'

class BubbleSort

  def sort(user_input)
    number = 0
    while number < (user_input.length - 1)
      user_input.each_with_index do |value, index|
        if user_input[index + 1].nil?
          value
        elsif value > user_input[index + 1]
          user_input[index], user_input[index + 1] = user_input[index + 1], user_input[index]
        end
      end
      number += 1
    end
    print user_input
  end

end

BubbleSort.new.sort(["z", "k", "l", "p", "t", "r", "a"])
