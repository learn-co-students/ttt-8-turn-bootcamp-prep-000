def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index >= 0 && index < 9
    if position_taken?(board, index) == false
      return move(board, index)
    else
      return false
    end
  end
end

def position_taken?(board,index)
  if board[index]=="" || board[index]== " " || board[index] == nil
    return false
  elsif board[index]=="X" || board[index]== "x" || board[index]=="O" || board[index]== "o"
    return true
  end
end

#input_to_index function and pass it as an arg to #move

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def move(board,index, value="X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index)
    display_board(board)
  else
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board,index)
      display_board(board)
    end
  end
end
