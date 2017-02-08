#require 'pry'
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "



end

def input_to_index(user_input)
return user_input.to_i-1
  end

  def move(board, index, char = "X")
  #index = index.to_i - 1
    board[index] = char
    
  end

  def valid_move?(board, index)
    #binding.pry
  #  index = index.to_i - 1
    if !position_taken?(board, index) && index.between?(0, 8)
      true
    else
      false
    end
    end

  # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    else
      return true
    end
  end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else 
    puts "Invalid move"
    turn(board)
  end
  display_board(board)
end

