def find_pairs(array, k)
  # write your code here
  result = []
  n = array.size

  array.each_with_index do |num, index|
    (index + 1...n).each { |index2| result << [num, array[index2]] if num + array[index2] == k }
  end
  result
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]
