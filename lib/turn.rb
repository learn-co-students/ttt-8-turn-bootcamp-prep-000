def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (user_input)
  user_input.to_i - 1
end

def valid_move?(board,index)
  if (index.between?(0,8) && board[index] != "X" && board[index] != "O")
    true
  end
end

def move(board,position,char = "X")
  board[position]=char
end

def turn(board)
 index = ""
  loop do
    puts "Please enter 1-9:"
    position = gets.strip
    index = input_to_index(position)
    if valid_move?(board,index)
      break
    end
  end
  move(board,index)
  display_board(board)
end
