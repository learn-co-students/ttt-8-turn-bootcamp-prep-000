def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, char = "X") 
  board[index] = char
display_board(board)
end

def valid_move?(board, index)
  valid = nil
  if (index.between?(0, 8) && position_taken?(board, index))
    valid = true
  else 
    valid = false
  end 
  valid
end

def position_taken?(board, index)
  taken = nil
  if (board[index] == " " || board[index] == "" || board[index] == nil )
    taken = true
  else
    taken = false
  end
  taken
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index)
    puts "I entered #{index} in response to the gets prompt."
    move(board, index, char = "X")
  else 
    turn(board)
  end

end