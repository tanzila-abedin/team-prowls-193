# https://github.com/microverse-students/maps-chasscepts

def appears_most_times(array)
  # write your code here
  hash = array.inject(Hash.new(0)) do |accm, item|
    accm[item] += 1
    accm
  end
  hash.key(hash.values.max)
end

puts appears_most_times([1, 2, 3, 1, 5])
# => 1

puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
# => 88

puts appears_most_times([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509, 4376, 84945, 84945, -26509, 896341, 4376])
# => 4376
