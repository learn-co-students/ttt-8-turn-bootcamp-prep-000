def display_board(board)
  line_1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  divider = "-----------"
  line_2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  line_3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts line_1, divider, line_2, divider, line_3
end

def valid_move?(board, index)
  !position_taken?(board, index) && index <= board.length - 1 && index >= 0
end

def position_taken?(board,index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(board, position, char = "X")
  board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  player_move = input_to_index(gets.strip)
  if valid_move?(board, player_move)
    move(board, player_move)
    display_board(board)
  else
    turn(board)
  end
end
