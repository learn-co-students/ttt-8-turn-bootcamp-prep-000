def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(choice)
  return choice.to_i ? choice.to_i - 1 : -1
end

def valid_move?(board, pos)
  return pos.between?(0, 8) ? position_taken?(board, pos) ? false : true : nil
end

def position_taken?(board, pos)
  return board[pos] == " " || board[pos] == "" || board[pos] == nil ? false : board[pos] == "X" || board[pos] == "O" ? true : false
end

def move(board, pos, player = "X")
  board[pos] = player
end

def turn(board)
  puts "Please enter 1-9:"
  pos = input_to_index(gets.strip)
  until valid_move?(board, pos)
    puts "Please enter a valid number"
    pos = input_to_index(gets.strip)
  end
  move(board, pos)
  display_board(board)
  
  
end