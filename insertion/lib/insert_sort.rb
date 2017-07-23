# At each array-position, it checks the value there against the largest value in the sorted list (which happens to be next to it, in the previous array-position checked). If larger, it leaves the element in place and moves to the next. If smaller, it finds the correct position within the sorted list, shifts all the larger values up to make a space, and inserts into that correct position.

class InsertSort
  attr_reader
              :unsorted

  def initialize(arr)
    @unsorted = arr
  end


  def sort
    sorted = []
    # index = 0
    # final_index = @unsorted.length

    sorted << @unsorted.shift

      until @unsorted.empty?

        @unsorted.each do |unsorted_element|

          if unsorted_element < sorted.first
            sorted.unshift(unsorted_element)
              @unsorted-=[unsorted_element]

          elsif unsorted_element > sorted.last
            sorted << unsorted_element

            @unsorted-=[unsorted_element]

          elsif

            sorted.each_with_index do |sorted_element, index|
              if sorted_element > unsorted_element
                  sorted.insert(index-1, unsorted_element)
                @unsorted-=[unsorted_element]
              elsif sorted_element < unsorted_element
                sorted.insert(index+1, unsorted_element)
                @unsorted-=[unsorted_element]
            else
              break
              end
            end
          end
        end
      end
      sorted
    end




    # if sorted.length == 1 && element > sorted[index]
    #   sorted << element
    #   @unsorted.shift
    #
    # elsif sorted.length == 1 && element < sorted[index]
    #   sorted.unshift(element)
    #     @unsorted.shift


  # def run
  #   until @sorted.empty?
  #     send_first_element_into_sorted
  #     initial_greater_than_less_than
  #   end
  # end
  #
  # def send_first_element_into_sorted
  #
  # end
  #
  # def initial_greater_than_less_than
  #   if @unsorted[0] > @sorted[0]
  #     is_element_greater_than
  #   else
  #     is_element_less_than
  #   end
  # end
  #
  # def is_element_greater_than
  #   index = 0
  #   if @sorted > @unsorted
  #     @sorted.insert(index, @unsorted[0])
  #   elsif @sorted[index] < @unsorted[0]
  #     index+=1
  #     is_element_greater_than
  #   end
  #   @sorted
  # end
  #
  # def is_element_less_than
  #   index = 0
  #   if @sorted[index] < @unsorted[0]
  #     @sorted.insert(index, @unsorted[0])
  #   elsif @sorted[index] > @unsorted[0]
  #     # @sorted.insert(index-1, @unsorted[index])
  #     index+=1
  #     is_element_less_than
  #   end
  #   @sorted
  # end

end
