class Insertion
  def insertion_sort(sample)
    sorts = sample.length

    sample.each_with_index do |index, sort|
      value = a[i]
      hole = i
      while hole > 0 && a[hole -1] > value
        a[hole - 1] = a[hole]
      end
      a[hole] << value
    end
    # take two arguments - array and n ( number of elements in the array)
    # run a loop starting from index 1 until n - 1
    # create a hole by taking out a value to insert another variable into
    # value = a[i]
    # hole  =  i
    # while hole > 0 && a[hole - 1] > value
    # a[hole] <-- a[hole -1]
    #if while is false
    # a[hole] << value
  end
end

sample = [5, 2, 9, 7, 1, 3, 8, 1, 4, 6, 0]
ins = Insertion.new
p ins.insertion_sort(sample)
