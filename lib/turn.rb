def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-"*11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-"*11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index >= 0 && index <= 8 
    if board[index] == "" || board[index] == " " || board[index] == nil
      true
    end
  else
    false
  end
end



def move(board, index, user="X")
  board[index] = user
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    puts "Enter a valid move"
    index = input_to_index(gets.strip)
  end
end