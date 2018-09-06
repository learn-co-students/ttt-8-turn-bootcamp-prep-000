def display_board (board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (index.between?(0,8) && !position_taken?(board,index))
    true
  else
    false
  end
end

def position_taken? (board,index)
  taken = nil
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    taken = false
  else
    taken = true
  end
end

def input_to_index(user_input)
   user_input.to_i - 1
end

def move (board,index,char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
    answer = input_to_index(input)
    if valid_move?(board,answer)
      move(board, answer)
      display_board(board)
  else
    puts "Invalid Entry!"
    turn(board)
  end  
end