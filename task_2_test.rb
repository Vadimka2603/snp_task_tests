require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns correct values on correct values' do
    expect(coincidence([1, 2, 3, 4, 5], (3..5))).to match_array [3, 4, 5]
  end

  it 'it returns correct values on nil' do
    expect(coincidence).to match_array []
  end

  it 'it returns correct values with nil and float' do
    expect(coincidence([nil, 1, 2.5, 4, 2], (1..3))).to match_array [1, 2, 2.5]
  end
end
