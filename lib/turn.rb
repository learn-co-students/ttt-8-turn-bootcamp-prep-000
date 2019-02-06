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

def valid_move?(board, index)
  index >= 0 && index < 9 && !position_taken?(board, index)
end

def position_taken?(board, index)
    board[index].to_s.strip != ""
end

def move(board, index, type = 'X')
   board[index] = type
end

def turn(board, turn = 'X')
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  until valid_move?(board, index)
      puts "Please enter a valid move."
      puts "Please enter 1-9:"
      index = input_to_index(gets.to_i)
  end
  puts index.to_s
  move(board, index, turn)
  display_board(board)
end
    