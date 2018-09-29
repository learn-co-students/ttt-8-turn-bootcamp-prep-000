def input_to_index(input)
  return input.to_i-1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def valid_move?(board, index)
  if !position_taken?(board, index)
    if index>=0 && index<=8
      return true
    else
      return FALSE
    end
  end
end

def position_taken?(board, index)
  if (board[index]==" "||board[index]==""||board[index]==nil)
    return FALSE
  else
    return TRUE
  end
end

def move(board, index, mark = "X")
  board[index] = mark
end

def turn(board)
  
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    loop do
      puts "Please write valid input! From 1-9:"
      user_input = gets.strip
      index = input_to_index(user_input)
      
      if valid_move?(board, index)
        move(board, index)
        display_board(board)
        break
      end
      
    end
  end
end
