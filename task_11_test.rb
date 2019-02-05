require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it returns true on 199' do
    my_class = Dessert.new(199, 'Вкусняшка')
    expect(my_class.healthy?).to be true
  end

  it 'it returns false on 205' do
    my_class = Dessert.new(205, 'Вкусняшка')
    expect(my_class.healthy?).to be false
  end

  it 'it returns true on delicious' do
    my_class = Dessert.new
    expect(my_class.delicious?).to be true
  end
end
