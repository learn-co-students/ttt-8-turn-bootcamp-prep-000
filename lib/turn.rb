def display_board(board)
  border = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts border
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts border
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false 
      return TRUE
  else
    return FALSE
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return FALSE
  else
    return TRUE
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
  return board  
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    until valid_move?(board, index) == true do 
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
    end
    move(board, index, character = "X")
    display_board(board)
end