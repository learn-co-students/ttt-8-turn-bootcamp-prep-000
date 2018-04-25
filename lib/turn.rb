def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(inp)
  inp.to_i - 1
end

def position_taken?(arr, ind)
  arr[ind] == "" || arr[ind] == " " || arr[ind] == nil
end

def valid_move?(arr, ind)
  ind != -1 && ind.between?(0, 8) && position_taken?(arr, ind)
end

def move(arr, ind, char="X")
  arr[ind] = char
end

def turn(arr)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(arr, index)
    move(arr, index)
    display_board(arr)
  else
    turn(arr)
  end
end
