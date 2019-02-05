require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns correct values' do
    expected_hash = { 'a': 3, 'man': 1, 'canal': 1, 'panama': 1, 'plan': 1 }
    expect(count_words('A man, a plan, a canal -- Panama')).to eq expected_hash
  end

  it 'it returns correct values on do bee do bee do' do
    expected_hash = { 'bee': 2, 'doo': 3 }
    expect(count_words('Doo bee doo bee doo')).to eq expected_hash
  end
end
