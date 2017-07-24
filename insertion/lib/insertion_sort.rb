require 'pry'

class InsertionSort

  def sort(data_set)
    output = []
    input_index = 0
    until output.length == data_set.length
      output_index = 0
      loop do
        if output_index == output.length || data_set[input_index] <= output[output_index]
          output.insert(output_index, data_set[input_index])
          break
        end
        output_index += 1
      end
      input_index += 1
    end
    output
  end

end
