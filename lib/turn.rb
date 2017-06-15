#### `#display_board`
# Should accept a board as an argument and print out the current state of the board for the user.
def display_board(cells)
  puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
  puts "-----------"
  puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
  puts "-----------"
  puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
end
#### `#valid_move?`
# Should accept a board and an index from the user and return true if the index
# is within the correct range of 0-8 and is currently unoccupied by an X or O
# token.
#**Hint: While not explicitly required by this lab, you might want to
# encapsulate the logic to check if a position is occupied in its own method,
# perhaps `#position_taken?`**

def valid_move?(board,index)
  return (index.between?(0,8) && !position_taken?(board,index))
end

def position_taken?(board,index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  elsif board[index]=="X" || board[index]=="O"
    return true
  end
end


#### `#move`
# Should accept a board, an index from the user (which was converted from their
# raw input with `input_to_index`), and a token to mark that position with (you
# can give that argument a default value of 'X'––we're not worrying about whose
# turn it is yet). The method should set the correct index value of that
# position within the board equal to the token.

def input_to_index(input)
  index = input.to_i - 1
end

def move(board,position,character="X")
  board[position] = character
end

def turn(board)
  begin
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end while !valid_move?(board,index)
  move(board,index)
  display_board(board)
end
