def bubble_sort(sample)
  sorts = sample.length

  loop do
    swap = false

    (sorts - 1).times do |index|
      if sample[index] > sample[index + 1]
        sample[index], sample[index + 1] = sample[index + 1], sample[index]
        swap = true
      end
    end

    break if swap == false
  end
  sample
end

sample = [5, 2, 9, 7, 1, 3, 8, 1, 4, 6, 0]
p bubble_sort(sample)
