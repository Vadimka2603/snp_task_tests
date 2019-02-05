require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns correct values' do
    expect(combine_anagrams(%w[cars for potatoes racs four scar creams scream]))
      .to match_array [%w[cars racs scar],
                       ['four'], ['for'], ['potatoes'], %w[creams scream]]
  end
end
