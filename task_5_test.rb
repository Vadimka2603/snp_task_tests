require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"
require 'date'
require "active_support/time"

describe 'Method test' do
  it 'it returns correct values on non integer' do
    expect(date_in_future([])).to eq Time.now.strftime('%d-%m-%Y %H:%M:%S')
  end
  it 'it returns correct values on integer' do
    expect(date_in_future(2)).to eq ((Time.now + 2.days)
                             .strftime('%d-%m-%Y %H:%M:%S'))
  end
end
