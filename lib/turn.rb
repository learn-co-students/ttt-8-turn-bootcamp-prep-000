def turn(board, token="X")
  
  def get_input
    puts "Please enter 1-9:";
    return input_to_index(gets.strip);
  end
  
  index = get_input;
  
  unless (valid_move? board, index)
    turn(board);
  else
    move(board, index, token);
  end
  
end

def move(board, index, token)
  board[index] = token;
  display_board(board);
end

def valid_move?(board, index)
  def out_of_bounds?(index)
    return !index.between?(0, 8);
  end
  
  def position_taken?(board, index)
    return !(board[index] == " " || board[index] == "" || board[index].nil?);
  end
  
  return !out_of_bounds?(index) && !position_taken?(board, index);
end

def input_to_index(input)
  return input.to_i - 1;
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ";
  puts "-----------";
  puts " #{board[3]} | #{board[4]} | #{board[5]} ";
  puts "-----------";
  puts " #{board[6]} | #{board[7]} | #{board[8]} ";
end