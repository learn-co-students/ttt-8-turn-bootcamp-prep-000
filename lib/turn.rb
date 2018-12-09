def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index input 
  input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if(board[index] == " " || board[index] == ""|| board[index] == NIL)
    return FALSE
  else
    return TRUE
  end
end

def valid_move?(board, index)
  if(index < 9 && !(index < 0))
    return !position_taken?( board, index)
  else
    return FALSE
  end
end

def turn(board)
  loop do 
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
    if(valid_move?(board,index))
      move(board,index)
      break  
    end
  end
  display_board(board)
end