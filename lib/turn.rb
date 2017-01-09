
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  position_taken?(board,index)
end

def position_taken?(board,index)
  if board[index] == " " && index.between?(0,9)
    return true
  elsif board[index] == "" && index.between?(0,9)
    return true
  elsif board[index] == nil
    return false
  elsif board[index] != " "
    return false
  end
end

def input_to_index(input)
  number = input.to_i - 1
end

def move(board, number, strg = 'X')
  board[number] = "#{strg}"
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  number = input_to_index(input)
  if number.between?(0,9) == true
    valid_move?(board,number)
    move(board,number,strg = "X")
    display_board(board)
  else
    until number.between?(0,9) == true
    puts "Please enter 1-9:"
    input = gets.strip
    number = input_to_index(input)
  end
end
end
