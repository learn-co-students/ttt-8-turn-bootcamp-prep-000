def turn(board)
  puts "Please enter 1-9:"
  player_choice = input_to_index(gets.strip)
  char = "X"
  if valid_move?(board, player_choice)
    move(board, player_choice, char)
    display_board(board)
  else
    puts "I'm sorry, that's not valid"
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8)
    if !position_taken?(board, index)
      return TRUE
    else
      return FALSE
    end
  else
    return FALSE  
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == nil || board[index] == ""
    FALSE
  else
    TRUE
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
  return board
end