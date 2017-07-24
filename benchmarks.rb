require 'benchmark'


  def merge_sort(array)
    return array if array.length <= 1
    middle = array.length / 2
    left = merge_sort(array[0...middle])
    right = merge_sort(array[middle..-1])
    merge(left, right)
  end

  def merge(left, right)
    result = []
    until left.empty? || right.empty?
      result << (left.first <= right.first ? left.shift : right.shift)
    end
    result + left + right
  end

  def insertion_sort(array)
    1.upto(array.length - 1) do |element|
      number = array[element]
      element_2 = element - 1
      while element_2 >= 0 and array[element_2] > number
        array[element_2+1] = array[element_2]
        element_2 -= 1
      end
      array[element_2 + 1] = number
    end
    array
  end

  def bubble_sort(array)
    cycles = array.length - 1
    rotate = true
    until rotate == false
      rotate = false
      cycles.times do |element|
        if array[element] > array[element + 1]
          array[element], array[element + 1] = array[element + 1], array[element]
          rotate = true
        end
      end
    end
    array
  end

  include Benchmark

  array = Array.new(100000) { rand 1..1000 }

  Benchmark.bm(7) do |x|
    x.report("merge:") { merge_sort(array)}
  end
  Benchmark.bm(7) do |x|
    x.report("insert:")   { insertion_sort(array) }
  end
  Benchmark.bm(7) do |x|
    x.report("bubble:")   { bubble_sort(array) }
  end
