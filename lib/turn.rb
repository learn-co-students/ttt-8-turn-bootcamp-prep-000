def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} " 
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index.to_i.between?(0, 8) == true 
    if position_taken?(board, index) == true
      return false
    else
      return true
    end
  else
    return false
  end 
end

def input_to_index(input)
  input.to_i - 1 
end 

def move(board, i, char = "X")
  board[i] = char
  return board
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  i = input_to_index(input)
  if valid_move?(board, i) == true
    move(board, i)
    display_board(board)
  else
    puts "Please enter another input"
    turn(board)
  end
end 