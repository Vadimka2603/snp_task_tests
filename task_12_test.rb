require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns true on not black licorice' do
    my_class = JellyBean.new('blacfk licrice', 'ololo', 200)
    expect(my_class.delicious?).to be true
  end

  it 'it returns false on black licorice' do
    my_class = JellyBean.new('black licrice', 'ololo', 200)
    expect(my_class.delicious?).to be false
  end
end
