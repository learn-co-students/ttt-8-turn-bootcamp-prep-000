def turn(board)
  validmove = 0
  while validmove == 0
  puts 'Please enter 1-9:'
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
    validmove = 1
  else
    puts "Invalid move, please select a different move"
end
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  temp = num.to_i
  temp = temp - 1
  temp
end

def move(board, index, playerchar = "X")
  board[index] = "#{playerchar}"
end

def valid_move?(board, index)
  if index.between?(0,8) &&  position_taken?(board,index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end
