
def display_board(board)
  puts "\n"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  puts converted_input = "#{user_input}".to_i
   converted_input - 1
end

def valid_move?(board, index)
  if index.between?(0,8)
   if !position_taken?(board, index)
     true
   end
 end
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board,index)
      move(board, index, char="X")
      display_board(board)
    else
      turn(board)
end
end

def position_taken?(board,index)
  if board[index] == " "||board[index] == ""||board[index] == nil
    false
  else
    true
  end
end

def move(board, index,char="X")
   board[index] = char
end
