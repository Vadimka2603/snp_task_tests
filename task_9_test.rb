require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns correct value' do
    hash1 = { a: 2, b: 12 }
    hash2 = { c: 11, e: 5 }
    hash3 = { c: 11, b: 12 }
    expect(connect_hashes(hash1, hash2)).to eq hash3
  end

  it 'it rewrite hashes' do
    hash1 = { a: 13, b: 9, d: 11 }
    hash2 = { c: 12, a: 15 }
    hash3 = { d: 11, c: 12, a: 13 }
    expect(connect_hashes(hash1, hash2)).to eq hash3
  end

  it 'it rewrite hashes with eq sum' do
    hash1 = { a: 14, b: 12 }
    hash2 = { c: 11, a: 15 }
    hash3 = { c: 11, b: 12, a: 15 }
    expect(connect_hashes(hash1, hash2)).to eq hash3
  end
end
