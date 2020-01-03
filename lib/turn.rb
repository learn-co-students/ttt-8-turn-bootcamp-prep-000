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

def move(board,index,x_or_o = "X")
  board[index] = x_or_o
end 

def position_taken?(board,index)
    if board[index] == " " || board[index] == "" || board[index] == nil 
       return false 
    elsif board[index] == "X" || board[index] == "O"
       return true 
    end 
end 

def valid_move?(board,index)
  if position_taken?(board,index) == false && (0..8).to_a.include?(index)
    return true 
  end 
  return false
end 

def turn(board)
  puts "Welcome to Tic Tac Toe!"
  display_board(board)
  puts "Please enter 1-9:"
  user_input = gets.strip 
  index = input_to_index(user_input)
    until valid_move?(board,index) == true 
      puts "Invalid"
      index = gets.strip.to_i - 1 
    end 
  move(board,index,x_or_o = "X")
  display_board(board)
end 



