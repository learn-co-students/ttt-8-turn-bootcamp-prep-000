require "pry"

def display_board (board)
  position = 0
  board.each_with_index do |value, index|
    if index == 2 || index == 5 || index == 8
      print " #{value} \n"
      puts "-----------"
    else
      print " #{value} |"
    end
  end
  puts "\n"
end

def input_to_index(user_input)
  output = nil
  user_input.split.each do |x|
    if x.is_a? Numeric
      output = -1
    else
      output = user_input.to_i - 1
    end
  end
  output
end



def valid_move?(board, index)
  valid_flag = false
  if (0..8).include?(index) && board[index] == " "
    valid_flag = true
  end
  valid_flag
end

def move (board, index, token)
  if token == "O"
  board[index] = token
  else
  board[index] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  token = "X"
    input = input_to_index(gets.chomp)
    if valid_move?(board, input)
      move(board, input, token)
      display_board(board)
    else
      puts "Please enter 1-9:"
      input = input_to_index(gets.chomp)
    end
end
