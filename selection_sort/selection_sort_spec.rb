require 'rspec'
require_relative 'selection_sort'

describe '#selection_sort' do
  it 'returns an empty array when given an empty array' do
    expect(selection_sort([])).to eq([])
  end

  it 'returns the same array when given an array with one element' do
    expect(selection_sort([1])).to eq([1])
  end

  it 'sorts an array of integers in ascending order' do
    expect(selection_sort([5, 3, 8, 2, 1])).to eq([1, 2, 3, 5, 8])
  end

  it 'sorts an array with duplicate elements' do
    expect(selection_sort([5, 3, 8, 2, 1, 2])).to eq([1, 2, 2, 3, 5, 8])
  end

  it 'sorts an array with negative numbers' do
    expect(selection_sort([5, -3, 8, 2, -1, 2])).to eq([-3, -1, 2, 2, 5, 8])
  end
end
