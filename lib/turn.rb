def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  def position_on_board?(index)
    index.between?(0, 8) && index.class == Fixnum
  end
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    elsif board[index] == "X" || board[index] == "O"
      return true
    end
  end
  position_on_board?(index) && !position_taken?(board, index)
end

def input_to_index(user_input)
  user_move = user_input.to_i - 1
end

def move(board_array, position, character = "X")
  board_array[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  end
  move(board, index)
  display_board(board)
end