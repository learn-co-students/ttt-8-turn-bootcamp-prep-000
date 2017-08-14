def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  index >=0 && index < 9 && board[index] == " "
end

def move(board,index,token="X")
  board[index]=token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while !valid_move?(board,index)
      puts "Please enter 1-9"
      index = gets.strip.to_i - 1
    end
  move(board,index,"X")
  display_board(board)
end

def input_to_index(input)
  input.to_i - 1
end
