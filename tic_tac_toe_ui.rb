require './lib/player'
require './lib/board'
#require './lib/cell'

players = [Player.new("Player 1"),Player.new("Player 2")]
board = Board.new


puts "Welcome to tic tac NO!"
players.each do |player|
  "#{player.name}, it's your turn!"
  puts board
  input = gets.chomp


end