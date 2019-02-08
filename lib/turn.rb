def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end  


def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    true
  elsif (board[index] == "" || board[index] == " " || board[index] == "  ")
    false
  end  
end  


def valid_move?(board, index)
  if (index < 0 || index > 9)
    false
  elsif position_taken?(board, index) == true
    false
  elsif position_taken?(board, index) == false
    true
  end
end  


def input_to_index(input)
  index = (input.to_i) - 1
end


def move(board, index, token = "X")
  board[index] = token
  puts token
end  

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if (valid_move?(board, index) == true)
      move(board,index)
      display_board(board)
      break
    else
      puts "Invalid input. Please try again."
    end 
  end 
  #turn(board)
end  






