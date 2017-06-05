def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  num.to_i-1
end

def move (brd,ind,chr="X")
  brd[ind]=chr
end

def valid_move?(board,index)

if (index.between?(0,8) && !position_taken?(board,index))
  return true
else return false
end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  else
    return false
  end
end

def turn (board)
loop do
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board,index)) 
    move(board,index)
    display_board(board)
    break
  end
end

end