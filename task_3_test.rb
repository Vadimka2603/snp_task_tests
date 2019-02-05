require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns correct values when input [1, 2, 3, 4, 4]' do
    expect(max_odd([1, 2, 3, 4, 4])).to be 3
  end
  it 'it returns correct values when input [21.0, 2, 3, 4, 4]' do
    expect(max_odd([21.0, 2, 3, 4, 4])).to be 21
  end
  it "it returns correct values when input ['ololo', 2, 3, 4, [1, 2], nil]" do
    expect(max_odd(['ololo', 2, 3, 4, [1, 2], nil])).to be 3
  end
  it 'it returns correct values when input %w[ololo fufufu]' do
    expect(max_odd(%w[ololo fufufu])).to be nil
  end
  it 'it returns correct values when input [2, 2, 4]' do
    expect(max_odd([2, 2, 4])).to be nil
  end
end
