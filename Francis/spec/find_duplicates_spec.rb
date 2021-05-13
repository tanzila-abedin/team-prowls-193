require './challenges/find_duplicates.rb'

RSpec.describe 'UnitTests' do
  it 'array_of_fifteen_positions' do
    # Failure message:
    # Method called: find_duplicates([3, 443, 67, 25, 501, 917, 23, 888, -402, 235, 377, 99, 311, 443, 1])
    arr = [3, 443, 67, 25, 501, 917, 23, 888, -402, 235, 377, 99, 311, 443, 1]
    expect(find_duplicates(arr)).to eq([443])
  end

  it 'array_of_nine_positions' do
    # Failure message:
    # Method called: find_duplicates([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509])
    arr = [4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509]
    expect(find_duplicates(arr)).to eq([-345, 4376, -345, 4376, -345])
  end

  it 'array_of_eleven_positions' do
    # Failure message:
    # Method called: find_duplicates([2367, -65326, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3490])
    arr = [2367, -65326, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3490]
    expect(find_duplicates(arr)).to eq([-65326])
  end

  it 'array_of_twenty_positions' do
    # Failure message:
    # Method called: find_duplicates([85, 105, 90, 275, 30, 100, 275, 110, 125, 130, 275, 10, 20, 30, 45, 50, 275, 65, 70, 111])
    arr = [85, 105, 90, 275, 30, 100, 275, 110, 125, 130, 275, 10, 20, 30, 45, 50, 275, 65, 70, 111]
    expect(find_duplicates(arr)).to eq([275, 275, 30, 275])
  end
end
