
def display_board(board)
  puts " #{board [0]} |#{board [1]} | #{board [2]}  "
  puts "-----------"
  puts " #{board [3]} |#{board [4]} | #{board [5]} "
  puts "-----------"
  puts " #{board [6]} |#{board [7]}| #{board[8]} "
end
#We need to figure out how to tell the computer what turn it is. the .each command has th program search each element of the array.
def turn_count(board)
    board.count
    spaces_taken = 0
       board.each do |space|
        if  space != " "
          spaces_taken += 1
        end

        end
   #puts spaces_taken
   turns = spaces_taken
  #puts "It's turn number #{turns}"
  return turns

end
def current_player(board)
    if turn_count(board) % 2 == 0
      then current_player(board) = "0"
      if turn_count(board) % 2 !=0
        then current_player(board) = "X"
    end
  return current_player(board)

end

board = [ " ", " ", "X ", " ", " ", "0 ", " ", " ", " ", ]
display_board(board)
turn_count(board)
current_player(board)
