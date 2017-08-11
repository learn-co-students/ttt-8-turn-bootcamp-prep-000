def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(num)
  num = num.to_i;
  num = num - 1;
end

def move(array, index, char="X")
  array[index]=char;
end

def valid_move?(board, index)
  ((index >= 0) && (index < 9)) && !(position_taken?(board, index));
end

def position_taken?(board, index)
  (board[index] == "X") || (board[index] == "O")
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip;
  index = input_to_index(input);
  if (valid_move?(board, index))
    move(board, index);
    display_board(board);
  else
    turn(board);
  end
end
