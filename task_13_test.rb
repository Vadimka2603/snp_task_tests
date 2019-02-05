require 'rspec/autorun'
require 'unicode'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns true' do
    expect('ololo'.palindrome?).to be true
  end

  it 'it returns true' do
    expect('A man, a plan, a canal -- Panama'.palindrome?).to be true
  end

  it 'it returns true' do
    expect("Madam, I'm Adam!".palindrome?).to be true
  end

  it 'it returns true' do
    expect(''.palindrome?).to be true
  end

  it 'it returns false' do
    expect('abracadabra'.palindrome?).to be false
  end
end
