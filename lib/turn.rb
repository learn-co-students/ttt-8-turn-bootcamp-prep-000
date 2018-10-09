def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  actual = input.to_i - 1
  actual
end

def move(board, pos, char = "X")
  board[pos] = char
end

def valid_move?(board, index)
   num = (0..8).to_a 
  if num.include?(index)
    return true unless position_taken?(board, index)
  end
  false
end 

def position_taken?(board, index)
  return true unless board[index] == " "
  false
end 

def turn(board)
    puts "Please enter 1-9:"
    input = gets.chomp
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, char = "X")
    else 
      turn(board)
    end
    display_board(board)
end 