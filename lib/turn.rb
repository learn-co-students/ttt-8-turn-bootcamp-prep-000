
#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def turn(board)
puts "Please enter 1-9:"
#display_board(board)
#turn(board)
  9.times do
      #puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
      ##position_taken?(board, index)
      while !valid_move?(board, index)
        puts "invalid position or position busy"
        puts "Please enter 1-9:"
        input = gets.strip
        index = input_to_index(input)
      end
      move(board, index)
      display_board(board)
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
    input = input.to_i
    input = input-1
  end
  
  def valid_move?(board, index)
  if (index.between?(0,8)) && (!position_taken?(board,index))
    puts "ok"
    return true
  else 
    puts "position is busy"
    return false 
  end 
end 

def position_taken?(board, index)
  if board[index]=="" || board[index]==" " || board[index]== nil 
    puts "position is free"
    return false 
  else 
    puts "position is not free"
    return true 
  end 
end

def move(board, index, player_char="X")
    board[index] = player_char
    puts "the board index #{index} is filled"
  end

