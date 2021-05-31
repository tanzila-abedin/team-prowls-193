def insertion_sort(array)
  # write your code here
  n = array.size - 1
  return if n <= 0
  el1 = array[n]
  return if el1 > array[n - 1]
  loop do
    if n.zero?
      array[n] = el1
      puts array.join(' ')
      break
    end
    el2 = array[n - 1]
    if (el2 > el1)
      array[n] = el2
      n -= 1
      puts array.join(' ')
    else
      array[n] = el1
      puts array.join(' ')
      break
    end
  end
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9
