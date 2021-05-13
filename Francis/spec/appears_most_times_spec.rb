require './challenges/appears_most_times.rb'

RSpec.describe 'UnitTests' do\
  it 'array_of_eleven_positions' do
    # Failure message:
    # Method called: appears_most_times([2367, -65326, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3490])
    arr = [2367, -65326, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3490]
    expect(appears_most_times(arr)).to eq(-65326)
  end

  it 'array_of_twenty_positions' do
    # Failure message:
    # Method called: appears_most_times([85, 105, 90, 275, 30, 100, 275, 110, 125, 130, 275, 10, 20, 30, 45, 50, 275, 65, 70, 111])
    arr = [85, 105, 90, 275, 30, 100, 275, 110, 125, 130, 275, 10, 20, 30, 45, 50, 275, 65, 70, 111]
    expect(appears_most_times(arr)).to eq(275)
  end

  it 'array_of_six_positions' do
    # Failure message:
    # Method called: appears_most_times([10, 10, 20, 30, 20, 20])
    arr = [10, 10, 20, 30, 20, 20]
    expect(appears_most_times(arr)).to eq(20)
  end

  it 'array_of_eight_positions' do
    # Failure message:
    # Method called: appears_most_times([3, 2, 19, 4, 19, 19, 3, 2])
    arr = [3, 2, 19, 4, 19, 19, 3, 2]
    expect(appears_most_times(arr)).to eq(19)
  end

  it 'array_of_ten_positions' do
    # Failure message:
    # Method called: appears_most_times([3594976, 2340, 3594976, 74390, -453894, 32076, 42, 7888, -21085, -320566])
    arr = [3594976, 2340, 3594976, 74390, -453894, 32076, 42, 7888, -21085, -320566]
    expect(appears_most_times(arr)).to eq(3594976)
  end
end
