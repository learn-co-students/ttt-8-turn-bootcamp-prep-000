def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if !index.between?(0,8)
    return FALSE
  elsif board[index] == "" || board[index] == " " || board[index] == nil
    return TRUE
  else
    return FALSE
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board,index,token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  space = input_to_index(input)
  if valid_move?(board,space)
    move(board,space)
  else
    turn(board)
  end
  display_board(board)
end