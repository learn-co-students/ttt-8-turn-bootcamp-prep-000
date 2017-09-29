def display_board(board="")
  rows = [" #{board[0]} | #{board[1]} | #{board[2]} ",\
  " #{board[3]} | #{board[4]} | #{board[5]} ",\
  " #{board[6]} | #{board[7]} | #{board[8]} "]
  puts "#{rows[0]}\n-----------\n#{rows[1]}\n-----------\n#{rows[2]}"

end

def input_to_index(input)
  input=(input.to_i) - 1;
end

def valid_move?(board, index)
  if board[index] == "" || board[index] == " " && index.between?(0, 8)
    return true
  elsif board[index] == "X" || board[index] == "O"
    return false
  end
end

def move(board, index, value="X")
  return board[index]=value
end

def turn(board)
        puts "Please enter 1-9:";
        input = gets.strip;
        index = input_to_index(input);
      if (valid_move?(board, index))
        move(board, index);
        display_board(board)
      else
        turn(board);
      end
end
