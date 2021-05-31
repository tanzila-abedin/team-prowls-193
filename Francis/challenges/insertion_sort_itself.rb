def sort_itself(array)
  # write your code here
  length = array.size
  return if length <= 1
  (1...length).each do |i|
    n = i
    item1 = array[n]
    loop do
      if n.zero? || item1 > array[n - 1]
        array[n] = item1
        puts array.join(' ')
        break
      else
        array[n] = array[n - 1]
        n -= 1
      end
    end
  end
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9
