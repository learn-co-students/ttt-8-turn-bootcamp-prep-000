def position_taken?(board, index)
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
    false : true
end
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  user_input.to_i - 1
end
def move(board, index, current_player = "X")
  board[index] = current_player
end
def turn(board)
  puts "Please enter 1-9:"
  answer  = gets.chomp
  corrected = input_to_index(answer)
  if valid_move?(board, corrected)
    move(board, corrected)
    display_board(board)
  else
    puts "Please enter 1-9:"
    answer  = gets.chomp
    corrected = input_to_index(answer)
    if valid_move?(board, corrected)
      move(board, corrected)
      display_board(board)
    end
  end
end
