def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(loc)
  loc.to_i - 1
end

def position_taken?(board,index)# cod
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board,index)
  index.between?(0,8) && !position_taken?(board,index)
end

def move(board,index,player="X")
  board[index] = "#{player}"
end

def turn(board)
  puts "Please enter 1-9:"
  the_move = gets.chomp.strip.to_i
  index = input_to_index(the_move)
  if valid_move?(board,index)
    puts "Move valid."
    move(board,index)
    display_board(board)
  else
    puts "Move invalid. Try again."
    turn(board)
  end

  #turn(board)
end
