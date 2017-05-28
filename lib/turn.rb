def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  index = input_to_index(input)
  while (index >= 9 || index < 0 || !valid_move?(board,index))
    puts "Please enter a move between 1 and 9 and make sure that it is valid"
    input = gets.strip.to_i
    index = input_to_index(input)
  end
    move(board,index)
    display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board,index,player = "X")
  return board[index] = "#{player}"
end

def valid_move?(board,index)
  if (index < 9 && index >= 0)
    if !position_taken?(board,index)
      return true
    else
      return false
    end
    return false
  end
  return false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end
