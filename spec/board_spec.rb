require '../lib/board'
#require '../lib/cell'
board = Board.new

puts "#{board.class} is an instance of board."
puts board
#{}"should output a beautiful cross-sectional view of a three dimensional tic-tac-no game"
#puts "#{board.cube} should be a big array."

puts "#{board.mark('X', 2, 2)} should equal X in the center of the middle grid"
puts board

