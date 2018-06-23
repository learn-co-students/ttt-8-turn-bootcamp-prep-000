

def valid_move?(board, index)
  if position_taken?(board,index) == FALSE && index < 9 && index >= 0
    TRUE
  else
    FALSE
  end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    FALSE
  else
    TRUE
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i-1
end

def move(board,index,player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == TRUE
    move(board,index)
    display_board(board)
  else
    puts "#{input} is not a valid number."
    turn(board)
  end
end