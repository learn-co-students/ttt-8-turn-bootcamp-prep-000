def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index>= 0 && index <=8
    if position_taken?(board, index) == false
      return true
    else return false
    end
  else return false
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else return true
  end
end

def move(board, index, position="X")
  board[index] = position
end

def turn(board)
  puts "Please enter 1-9:"
  goodInput = false
  while goodInput == false
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index) == true && position_taken?(board, index) == false
      move(board, index)
      goodInput = true
      display_board(board)
    else 
      puts "Not a valid move! Try again"
    end
  end
end

def input_to_index(input)
  index = input.to_i
  if !index 
    return -1
  else
    return index -= 1
  end
end