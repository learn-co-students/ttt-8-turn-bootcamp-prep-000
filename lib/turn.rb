def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  display_board(board)
  input = input_to_index(user_input)
   if valid_move?(board, input) == true
      move(board, input, value="X")
      display_board(board)
   else
     puts "Please enter 1-9:"
     user_input = gets.strip
   end
end


=begin
def display_board(board)
  rows = (0...3).collect do |row_index|
    i = row_index*3
    row = board[i...i+3]
    ' ' + row.join(' | ') + ' '
  end
  puts rows.join("\n" + '-'*11 + "\n")
end
=end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  if (user_input === "invalide")
    return -1
  else
  input = user_input.to_i
  input = input - 1
 end
end

def valid_move?(board, index)
  if ((index.between?(0, 8)  && board[index] == " ") ||
     (index.between?(0, 8)  && board[index] == "") ||
     (index.between?(0, 8)  && board[index] == nil))
    return true
  elsif (board[index] == "X" || board[index] == "O")
    return false
  end
end


def move(board, index, value = "X")
  board[index] = value
  puts board
end

=begin
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end
=end
