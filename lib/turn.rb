def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  return index.to_i - 1
end

def valid_move?(board, index)
  if(index < 0 || index > 8)
    return false
  elsif(board[index] == " " || board[index] == "")
    return true
  end
  
end

def move(board, position, char = "X")
  board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if(valid_move?(board,input))
    move(board,input,"X")
    display_board(board)
  else
    puts "Wrong input. try 1-9"
    turn(board)
  end
  
end