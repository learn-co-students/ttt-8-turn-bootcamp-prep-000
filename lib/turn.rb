def display_board(arr)
  row1= arr[0..2].join(' | ')
  row2= arr[3..5].join(' | ')
  row3= arr[6..8].join(' | ')
  puts " #{row1} "
  puts '-' * 11
  puts " #{row2} "
  puts '-' * 11
  puts " #{row3} "
end

def input_to_index(str)
  str.chomp.to_i - 1
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  blanks = ['', ' ', nil]
  !blanks.include?(board[index])
end

def move(board, index, token='X')
  if valid_move?(board, index)
    board[index] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    while !valid_move?(board, index)
      puts "Please enter 1-9:"
      index = input_to_index(gets.chomp)
    end
  end
enddef display_board(arr)
  row1= arr[0..2].join(' | ')
  row2= arr[3..5].join(' | ')
  row3= arr[6..8].join(' | ')
  puts " #{row1} "
  puts '-' * 11
  puts " #{row2} "
  puts '-' * 11
  puts " #{row3} "
end

def input_to_index(str)
  str.chomp.to_i - 1
end

def valid_move?(board, index)
  (index).between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  blanks = ['', ' ', nil]
  !blanks.include?(board[index])
end

def move(board, index, token='X')
  if valid_move?(board, index)
    board[index] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    while !valid_move?(board, index)
      turn(board)
    end
  end
end