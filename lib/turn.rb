#display_board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(str)
  index = str.to_i - 1
end

def move(board, index, character ="X")
  board[index] = character
end


# code your #valid_move? method here

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index.between?(0, 8)
    return true
  else
    return false
end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == nil || board[index] == " " || board[index] == ""
  return false
  elsif board[index] != nil
    return true
  end
end

#Turn method 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, character = "X")
      display_board(board)
    else
      turn(board)
    end
end

