def turn(board)
  
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  
  if valid_move?(board,index) == true
    move(board,index)
  else
    until valid_move?(board,index) == true
      puts "Invalid entry. Please enter 1-9:"
      index = gets.chomp.to_i
    end
  end
  
  return display_board(board)
  
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
  return index
end

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(b,i)
  if b[i] == " " && i.between?(0,8)
    return true
  elsif (b[i] == "X" || b[i] == "O") || i < 0 || i > 8
    return false
  end
end 
  
  
def move(board,index,token = "X")
  board[index] = token
end