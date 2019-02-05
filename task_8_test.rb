require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns correct values nil' do
    expect(multiply_numbers).to eq nil
  end

  it 'it returns correct values on ss' do
    expect(multiply_numbers('ss')).to eq nil
  end

  it 'it returns correct values on 1234' do
    expect(multiply_numbers(1234)).to eq 24
  end

  it 'it returns correct values on ss234' do
    expect(multiply_numbers('ss234')).to eq 24
  end

  it 'it returns correct values on float' do
    expect(multiply_numbers(2.3)).to eq 6
  end

  it 'it returns correct values on array' do
    expect(multiply_numbers([5, 6, 4, 'a'])).to eq 120
  end
end
