require 'rspec/autorun'
require 'unicode'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns true' do
    expect(palindrome?('ololo')).to be true
  end

  it 'it returns true' do
    expect(palindrome?('A man, a plan, a canal -- Panama')).to be true
  end

  it 'it returns true' do
    expect(palindrome?('ОРРО')).to be true
  end

  it 'it returns true' do
    expect(palindrome?("Madam, I'm Adam!")).to be true
  end

  it 'it returns true' do
    expect(palindrome?('')).to be true
  end

  it 'it returns false' do
    expect(palindrome?(nil)).to be false
  end

  it 'it returns false' do
    expect(palindrome?('abracadabra')).to be false
  end
end
