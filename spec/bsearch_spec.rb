require 'rspec'
require 'pry-byebug'
require_relative '../bsearch.rb'

describe 'Bsearch' do
  it 'returns index 0 if the array has 1 element' do
    arr = [4]
    result = Bsearch.bsearch(arr, 4)
    expect(result).to eq(0)
  end

  it 'returns the index of the given element to search for if the array is an odd length recursively' do
    arr = [1, 2, 3]
    result = Bsearch.bsearch(arr, 3)
    expect(result).to eq(2)

    arr = [1, 2, 3, 4, 5]
    result = Bsearch.bsearch(arr, 4)
    expect(result).to eq(3)

    result = Bsearch.bsearch(arr, 3)
    expect(result).to eq(2)

    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    result = Bsearch.bsearch(arr, 7)
    expect(result).to eq(6)
  end

  it 'returns the index of the element if the array size is even recursively' do
    arr = [1, 2, 3, 4, 5, 6]
    result = Bsearch.bsearch(arr, 2)
    expect(result).to eq(1)

    result = Bsearch.bsearch(arr, 4)
    expect(result).to eq(3)
  end

  it 'returns the index of the element if the array size is odd iteratively' do
    arr = [1, 2, 3]
    result = Bsearch.iterative_bsearch(arr, 3)
    expect(result).to eq(2)

    arr = [1, 2, 3, 4, 5]
    result = Bsearch.iterative_bsearch(arr, 4)
    expect(result).to eq(3)

    result = Bsearch.iterative_bsearch(arr, 3)
    expect(result).to eq(2)

    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    result = Bsearch.iterative_bsearch(arr, 7)
    expect(result).to eq(6)

    result = Bsearch.iterative_bsearch(arr, 9)
    expect(result).to eq(8)
  end

  it 'returns the index of the element if the array size is even iteratively' do
    arr = [1, 2, 3, 4, 5, 6]
    result = Bsearch.iterative_bsearch(arr, 2)
    expect(result).to eq(1)

    result = Bsearch.iterative_bsearch(arr, 4)
    expect(result).to eq(3)
  end

  it 'returns the index of where the element should be if it was not found in the array' do
    arr = [1, 2, 3, 4, 6, 7, 8]
    result = Bsearch.bsearch(arr, 5)
    expect(result).to eq(4)

    result = Bsearch.iterative_bsearch(arr, 5)
    expect(result).to eq(4)

    arr = [1, 2, 4, 5, 6, 7, 8, 9]
    result = Bsearch.bsearch(arr, 3)
    expect(result).to eq(2)

    result = Bsearch.iterative_bsearch(arr, 3)
    expect(result).to eq(2)
  end
end