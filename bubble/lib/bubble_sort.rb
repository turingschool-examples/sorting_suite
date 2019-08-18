class BubbleSort

  def sort_one_pass(user_input)
      user_input.each_with_index do |value, index|
        if user_input[index + 1].nil?
          value
        elsif value > user_input[index + 1]
          user_input[index], user_input[index + 1] = user_input[index + 1], user_input[index]
        end
      end
  end

  def sort(user_input)
    user_input.length.times do
      sort_one_pass(user_input)
    end
    user_input
  end

end
