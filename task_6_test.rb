require 'rspec/autorun'
require "/Users/user/ruby/#{ARGV[0]}"

describe 'Method test' do
  it 'it raise_error WrongNumberOfPlayersError' do
    expect { rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]]) }
      .to raise_error WrongNumberOfPlayersError
  end
  it 'it raise_error NoSuchStrategyError' do
    expect { rps_game_winner([%w[player1 P], %w[player2 A]]) }
      .to raise_error NoSuchStrategyError
  end
  it 'it raise_error player2 win with S when player1 P' do
    expect(rps_game_winner([%w[player1 P], %w[player2 S]]))
      .to eq 'player2 S'
  end
  it 'it raise_error player2 lose with P when player1 P' do
    expect(rps_game_winner([%w[player1 P], %w[player2 P]]))
      .to eq 'player1 P'
  end
end
