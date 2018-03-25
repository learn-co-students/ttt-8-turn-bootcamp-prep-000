### display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

### input_to_index
def input_to_index(ui)
  ui.to_i - 1;
end

### move
def move(board, index, player = 'X')
  board[index] = player
end

###Valid_move?
def valid_move?(board, index)
  a = board[index]
  filled = a == "X" || a == "O"
  index.between?(0,8) && !filled
end

### turn
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input = input_to_index(user_input)
  vmove = valid_move?(board, input)
  if (vmove == false)
      user_input = gets.strip
    else
      move(board, input)
  end
      display_board(board)
end
