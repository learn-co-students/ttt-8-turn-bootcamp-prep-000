def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil 
      false
    elsif board[index] == "X" || board[index] == "O"
      true
    end
  end
  if index.between?(0, 8) 
    if !position_taken?(board, index)
      true 
    end
  else
    false 
  end
end

def input_to_index(number)
  index = number.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else 
    puts "That is not a valid move, please try again."
    turn(board)
  end
end