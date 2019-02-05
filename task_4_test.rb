require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns correct values when input []' do
    expect(sort_array([])).to match_array []
  end
  it 'it returns correct values when input [2, 4, 6, 8]' do
    expect(sort_array([2, 4, 6, 8])).to match_array [8, 4, 6, 2, 2]
  end
  it 'it returns correct values when input [1]' do
    expect(sort_array([1])).to match_array [1, 1]
  end
  it 'it returns correct values when input [1, 2, 1, 3]' do
    expect(sort_array([1, 2, 1, 3])).to match_array [3, 2, 3, 1, 1]
  end
end
