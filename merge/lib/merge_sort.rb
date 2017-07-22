require 'pry'
class MergeSort

  def initialize
    @count = 0
  end

  def split_array_down_to_arrays_of_two(original_array)
    if original_array[-1].count > 2
      temp_array = []
      original_array.each_with_index do |original_array_entry, index|
        if original_array_entry.count > 2
          split_array = split_array_in_half(original_array_entry)
          temp_array.pop
          temp_array << split_array[0]
          temp_array << split_array[1]
          if original_array.count != index + 1
            temp_array << original_array[index + 1]
          end
        end
      end
      original_array = split_array_down_to_arrays_of_two(temp_array)
    end
    original_array
  end

  def sort_arrays_of_two(array)
    sorted_arrays = []
    array.each do |array_entry|
      sorted_arrays << swap_places_if_needed(array_entry)
    end
  end

  def split_array_in_half(array)
    count = array.count
    half_index = (count/2) - 1
    first_half = array[0..(half_index)]
    second_half = array[half_index+1..-1]
    arrays = [first_half, second_half]
  end

  def swap_places_if_needed(array)
    if array.count == 1
      return array
    end
    if array[0] > array[1]
      first_index = array[0]
      array[0] = array[1]
      array[1] = first_index
      array
    end
  end

  def sort(array)
    split_array = split_array_down_to_arrays_of_two([array])
    sorted_arrays = sort_arrays_of_two(split_array)
    final_merge = final_merge(sorted_arrays)
  end

  def final_merge(array)
    if array.count > 1
      array << merge_sorted_arrays(array.shift, array.shift)
      array = final_merge(array)
    end
    array.flatten
  end

  def merge_sorted_arrays(array1, array2)
    merged_array = []
    until array1.empty? || array2.empty?
      if array1[0] < array2[0]
        merged_array << array1[0]
        array1.delete(array1[0])
      else
        merged_array << array2[0]
        array2.delete(array2[0])
      end
    end
    merged_array + array1 + array2
  end



end
